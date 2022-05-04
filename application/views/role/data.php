<!--- tabel tambahan --->
					<div class="row">
						<div class="col-lg-6">
                            <a href="" class="btn btn-info mb-3" data-toggle="modal" data-target="#newRoleModal">Tambah Hak Akses</a>
						<div class="info-box">
							<table class="table table-hover">
							  <thead>
								<tr>
								  <th scope="col">#</th>
								  <th scope="col">Role</th>
								  <th scope="col">Action</th>
								  
								</tr>
							  </thead>
							  <tbody>
								<?php $i = 1; ?> <!--- akalin biar no urutnya berurut ---->
							    <?php foreach($role as $r) : ?>
								<tr>
								  <th scope="row"><?= $i; ?></th>
								  <td><?= $r['role']; ?></td>
								  <td>
									<!-- tambahkan tombol utk mengelola tabel user_access_menu dari database 'mid_login'  --->
									<a class="badge badge-warning" href="<?= base_url('role/roleaccess/') . $r['id']; ?>"> Access</a>
									
									<a class="badge badge-success" href="<?= base_url('admin/editRole/') . $r['id']; ?>"><i class="fas fa-edit"></i> Edit</a>
									<a class="badge badge-danger" href="<?= base_url('admin/deleteRole/') . $r['id']; ?>" onclick="return confirm('Are you sure delete this data?'); "><i class="fas fa-trash-alt"></i> Hapus</a>
									
								  </td>
								</tr>
								<?php $i++; ?>
								<?php endforeach; ?>
								
							  </tbody>
							</table>
                        </div>
						</div>
					</div>