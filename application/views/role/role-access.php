 <div class="row">
        <div class="col-lg-6">

            <?= $this->session->flashdata('message'); ?>

            <h5>Role : <?= $role['role']; ?></h5>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Menu</th>
                        <th scope="col">Access</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 1;
                    foreach ($menu as $m) : ?>
                        <tr>
                            <th scope="row"><?= $i; ?></th>
                            <td><?= $m['menu']; ?></td>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" 
									<?= check_access($role['id'], $m['id']); ?> 
									data-role="<?= $role['id']; ?>" data-menu="<?= $m['id']; ?>" >
									<!--- buat helpers 'mid_helper' fungsi baru -> check_access($role_id, $menu_id) --->
                                </div>
                            </td>
                        </tr>
                    <?php $i++;
                    endforeach; ?>
                </tbody>
            </table>
			<a href="<?= base_url('role'); ?>" class="btn btn-success float-left"><i class="fas fa-arrow-alt-circle-left"></i> Back</a>
        </div>
    </div>
