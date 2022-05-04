<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col d-flex ">
                <h3 class="card-title align-self-center" style="font-size: 25px;">
                    Jenis <?= $title; ?> Berkunjung
                </h3>
            </div>
            
        </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0 table-responsive">
        <table class="table table-striped datatable">
            <div class="col text-center mt-4 mb-4">
                <a href="<?= base_url('pasien/pasienLama'); ?>" class="btn btn-sm btn-info" style="font-size: 30px;">
                    <i class="fas fa-user"></i> Pasien Lama
                </a>
                <a href="<?= base_url('pasien/add'); ?>" class="btn btn-sm btn-success" style="font-size: 30px;">
                    <i class="fas fa-plus"></i> Pasien Baru
                </a>
            </div>
        </table>
    </div>
    <!-- /.card-body -->
</div>