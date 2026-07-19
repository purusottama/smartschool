<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Edit School</h3>
                    </div>
                    <form action="<?php echo site_url('schoolmaster/edit/' . $id) ?>" method="post" accept-charset="utf-8">
                        <div class="box-body">
                            <?php if ($this->session->flashdata('msg')) {
                                echo $this->session->flashdata('msg');
                                $this->session->unset_userdata('msg');
                            } ?>
                            <?php echo $this->customlib->getCSRF(); ?>

                            <div class="form-group mb5">
                                <label>School Name</label><small class="req"> *</small>
                                <input name="name" type="text" class="form-control" value="<?php echo set_value('name', $school->name); ?>" />
                                <span class="text-danger"><?php echo form_error('name'); ?></span>
                            </div>
                            <div class="form-group mb5">
                                <label>Code</label><small class="req"> *</small>
                                <input name="code" type="text" class="form-control" value="<?php echo set_value('code', $school->code); ?>" <?php echo ($school->id == 1) ? 'readonly' : '' ?> />
                                <span class="text-danger"><?php echo form_error('code'); ?></span>
                            </div>
                            <div class="form-group mb5">
                                <label>Domain</label>
                                <input name="domain" type="text" class="form-control" value="<?php echo set_value('domain', $school->domain); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Address</label>
                                <input name="address" type="text" class="form-control" value="<?php echo set_value('address', $school->address); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Contact Phone</label>
                                <input name="phone" type="text" class="form-control" value="<?php echo set_value('phone', $school->phone); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Contact Email</label>
                                <input name="email" type="text" class="form-control" value="<?php echo set_value('email', $school->email); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Principal Name</label>
                                <input name="principal_name" type="text" class="form-control" value="<?php echo set_value('principal_name', $school->principal_name); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Academic Year</label>
                                <input name="academic_year" type="text" class="form-control" value="<?php echo set_value('academic_year', $school->academic_year); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>Base URL</label>
                                <input name="base_url" type="text" class="form-control" value="<?php echo set_value('base_url', $school->base_url); ?>" />
                            </div>
                            <div class="form-group mb5">
                                <label>SaaS Key</label>
                                <input name="saas_key" type="text" class="form-control" value="<?php echo set_value('saas_key', $school->saas_key); ?>" />
                            </div>
                        </div>
                        <div class="box-footer">
                            <a href="<?php echo site_url('schoolmaster/index') ?>" class="btn btn-default">Back</a>
                            <button type="submit" class="btn btn-info pull-right">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
