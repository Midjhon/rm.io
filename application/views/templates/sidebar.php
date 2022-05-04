<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-info elevation-1">
    <!-- Brand Logo -->
    <a href="<?= base_url() ?>" class="brand-link bg-info text-center border-bottom-0">
        <span class="brand-text font-weight-light">Rekam Medis</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column text-sm" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- looping menu -->
                    <!-- baru loop1 -> menu -->
                    <?php foreach($join as $j) : ?>
                    <li class="nav-header text-uppercase"><?= $j->menu; ?></li>
                        
                    <?php endforeach; ?>
                    <li class="nav-item">
                        <a href="<?= base_url('dashboard') ?>" class="nav-link <?= active_menu('admin', 'dashboard'); ?>">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    
                    <li class="nav-header text-uppercase">User</li>
                    <li class="nav-item">
                        <a href="<?= base_url('user') ?>" class="nav-link <?= active_menu('user'); ?>">
                            <i class="fas fa-user-injured nav-icon"></i>
                            <p>Pasien</p>
                        </a>
                    </li>

                    <!-- looping menu -->
                    <!-- loop 2 => menu dan sub menu -> tapi error tampil 2 isinya -->
                    <!-- <?php foreach($join as $j) : ?>
                    <li class="nav-header text-uppercase"><?= $j->menu; ?></li>
                        <?php foreach($join2 as $jo) : ?>
                            <li class="nav-item">
                                <a href="<?= base_url($jo->url) ?>" class="nav-link <?= active_menu($jo->url); ?>">
                                    <i class="<?= $jo->icon ?>"></i>
                                    <p>
                                        <?= $jo->title ?>a
                                    </p>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    <?php endforeach; ?>
                     -->
                    
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark"><?= $title; ?></h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">
                            <a href="<?= base_url('dashboard') ?>">Dashboard</a>
                        </li>
                        <?php if ($this->uri->segment(1) != 'dashboard') : ?>
                            <li class="breadcrumb-item active text-capitalize">
                                <?= $this->uri->segment(1) ?>
                            </li>
                        <?php endif; ?>
                    </ol>
                </div>
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">