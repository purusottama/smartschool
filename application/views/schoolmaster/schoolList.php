<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-md-4">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add School</h3>
                    </div>
                    <form action="<?php echo site_url('schoolmaster/create') ?>" method="post" accept-charset="utf-8">
                        <div class="box-body">
                            <?php if ($this->session->flashdata('msg')) {
                                echo $this->session->flashdata('msg');
                                $this->session->unset_userdata('msg');
                            } ?>
                            <?php echo $this->customlib->getCSRF(); ?>

                            <div class="form-group mb5">
                                <label>School Name</label><small class="req"> *</small>
                                <input name="name" type="text" class="form-control" value="<?php echo set_value('name'); ?>" />
                                <span class="text-danger"><?php echo form_error('name'); ?></span>
                            </div>
                            <div class="form-group mb5">
                                <label>Code (slug, used by API/subdomain)</label><small class="req"> *</small>
                                <input name="code" type="text" class="form-control" value="<?php echo set_value('code'); ?>" placeholder="e.g. greenwood" />
                                <span class="text-danger"><?php echo form_error('code'); ?></span>
                            </div>
                            <div class="form-group mb5">
                                <label>Domain (optional host mapping)</label>
                                <input name="domain" type="text" class="form-control" value="<?php echo set_value('domain'); ?>" placeholder="e.g. greenwood.example.com" />
                            </div>
                            <div class="form-group mb5">
                                <label>Address</label>
                                <input name="address" type="text" class="form-control" value="<?php echo set_value('address'); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Contact Phone</label>
                                <input name="phone" type="text" class="form-control" value="<?php echo set_value('phone'); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Contact Email</label>
                                <input name="email" type="text" class="form-control" value="<?php echo set_value('email'); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Principal Name</label>
                                <input name="principal_name" type="text" class="form-control" value="<?php echo set_value('principal_name'); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Academic Year</label>
                                <input name="academic_year" type="text" class="form-control" value="<?php echo set_value('academic_year'); ?>" placeholder="e.g. 2025-26" />
                            </div>
                            <div class="form-group mb5">
                                <label>Base URL (optional)</label>
                                <input name="base_url" type="text" class="form-control" value="<?php echo set_value('base_url'); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>SaaS Key (optional)</label>
                                <input name="saas_key" type="text" class="form-control" value="<?php echo set_value('saas_key'); ?>" />
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="submit" class="btn btn-info pull-right">Save</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-md-8">
                <div class="box box-primary">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix">School List</h3>
                    </div>
                    <div class="box-body">
                        <?php if ($this->session->flashdata('list_msg')) {
                            echo $this->session->flashdata('list_msg');
                            $this->session->unset_userdata('list_msg');
                        } ?>
                        <div class="alert alert-info">Shared-DB multi-tenancy: every row in the system carries a <b>school_id</b>. School <b>#1</b> is the existing data and cannot be deleted. Super admins switch schools from the top-bar selector.</div>

                        <div class="mailbox-messages">
                            <div class="download_label">School List</div>
                            <table class="table table-striped table-bordered table-hover example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Code</th>
                                        <th>Domain</th>
                                        <th>Status</th>
                                        <th class="text-right">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($schoollist as $school) { ?>
                                        <tr>
                                            <td><?php echo $school['id'] ?></td>
                                            <td class="mailbox-name"><?php echo html_escape($school['name']) ?></td>
                                            <td><?php echo html_escape($school['code']) ?></td>
                                            <td><?php echo html_escape($school['domain']) ?></td>
                                            <td>
                                                <?php if ($school['is_active']) { ?>
                                                    <span class="label bg-green font-weight-normal">Active</span>
                                                <?php } else { ?>
                                                    <span class="label bg-red font-weight-normal">Inactive</span>
                                                <?php } ?>
                                            </td>
                                            <td class="mailbox-date text-right">
                                                <a href="<?php echo base_url(); ?>schoolmaster/edit/<?php echo $school['id'] ?>" class="btn btn-default btn-xs" data-toggle="tooltip" title="Edit">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>schoolmaster/toggle/<?php echo $school['id'] ?>" class="btn btn-default btn-xs" data-toggle="tooltip" title="Toggle active">
                                                    <i class="fa fa-power-off"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>schoolmaster/delete/<?php echo $school['id'] ?>" class="btn btn-default btn-xs <?php echo ($school['id'] == 1) ? 'disabled' : '' ?>" data-toggle="tooltip" title="Delete" onclick="return confirm('Delete this school?');">
                                                    <i class="fa fa-remove"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
