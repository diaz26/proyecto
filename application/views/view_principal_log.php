<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from brandio.io/envato/iofrm/html/login1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 May 2019 19:53:48 GMT -->
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= $head->nombre; ?></title>
  <link rel="shortcut icon" href="<?= base_url().$head->logo; ?>" >
  <link rel="icon" href="<?= base_url().$head->logo; ?>" >
  <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/fontawesome-all.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/iofrm-style.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/iofrm-theme1.css">
</head>
<body>
  <div class="form-body">
    <div class="row">
      <div class="img-holder">
        <div class="bg"></div>
        <div class="info-holder">

        </div>
      </div>
      <div class="form-holder">
        <div class="form-content">
          <div class="form-items">
            <h3><?= $head->ban_1_title; ?></h3>
            <p><?= $head->ban_1_text; ?></p>
            <div class="page-links">
              <a href="<?= base_url(); ?>" class="active">Login</a><a href="<?= base_url(); ?>/index.php/service">Register</a>
            </div>
            <form action="<?= base_url(); ?>index.php/login/validar" method="post">
              <center><input class="form-control" style="width: 80%" type="text" name="user" placeholder="E-mail" required>
              <input class="form-control" style="width: 80%" type="password" name="pass" placeholder="Contraseña" required>
                <?php echo $this->session->flashdata('msg'); ?>
              <div class="form-button">
                <button id="submit" type="submit" class="ibtn">Login</button></center> <!--a href="<?= base_url(); ?>index.php/login/recuperar">Forget password?</a-->
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="<?= base_url(); ?>loged/js/jquery.min.js"></script>
  <script src="<?= base_url(); ?>loged/js/popper.min.js"></script>
  <script src="<?= base_url(); ?>loged/js/bootstrap.min.js"></script>
  <script src="<?= base_url(); ?>loged/js/main.js"></script>
</body>

<!-- Mirrored from brandio.io/envato/iofrm/html/login1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 May 2019 19:53:54 GMT -->
</html>
