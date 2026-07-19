-- ============================================================================
-- Multi-School (Shared-DB / Option B) — Schools registry (tenant master)
-- Single database; every business table carries school_id (see add_school_id.sql).
-- This table just describes each tenant. Backward compatible: row id = 1 is the
-- EXISTING school, and every migrated row defaults school_id = 1.
-- Run once against the application database.
-- ============================================================================

CREATE TABLE IF NOT EXISTS `schools` (
  `id`         INT(11)      NOT NULL AUTO_INCREMENT,
  `name`       VARCHAR(191) NOT NULL,
  `code`       VARCHAR(64)  NOT NULL,                 -- unique slug (API / subdomain)
  `domain`     VARCHAR(191) DEFAULT NULL,             -- optional host mapping
  `base_url`   VARCHAR(255) DEFAULT NULL,
  `logo`       VARCHAR(255) DEFAULT NULL,
  `saas_key`   VARCHAR(191) DEFAULT NULL,
  `is_active`  TINYINT(1)   NOT NULL DEFAULT 1,
  -- Legacy/optional (unused in shared-DB; kept nullable for external-DB edge cases):
  `db_hostname` VARCHAR(191) DEFAULT NULL,
  `db_username` VARCHAR(191) DEFAULT NULL,
  `db_password` VARCHAR(191) DEFAULT NULL,
  `db_database` VARCHAR(191) DEFAULT NULL,
  `created_at` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP    NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_schools_code` (`code`),
  KEY `idx_schools_domain` (`domain`),
  KEY `idx_schools_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Backward-compatibility anchor: the current install is school #1.
INSERT INTO `schools` (`id`, `name`, `code`, `is_active`)
SELECT 1, 'Default School', 'default', 1
WHERE NOT EXISTS (SELECT 1 FROM `schools` WHERE `id` = 1);

-- If upgrading a registry created by the earlier DB-per-school version, relax the
-- old NOT NULL constraints so shared-DB inserts (metadata only) succeed:
-- ALTER TABLE `schools` MODIFY `db_username` VARCHAR(191) NULL, MODIFY `db_database` VARCHAR(191) NULL;
