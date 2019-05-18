<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from brandio.io/envato/iofrm/html/register1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 May 2019 19:55:05 GMT -->
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
<script type="text/javascript">
  function validarPasswd(){
    var p1 = document.getElementById("pwd1").value;
    var espacios = false;
    var cont = 0;

    while (!espacios && (cont < p1.length)) {
      if (p1.charAt(cont) == " ")
      espacios = true;
      cont++;
    }

    if (espacios) {
      alert ("El nombre de la página no puede contener espacios en blanco");
      return false;
    }
  }

</script>
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
                        <h3>Regístrate</h3>
                        <p><?= $head->ban_2_text; ?></p>
                        <div class="page-links">
                            <a href="<?= base_url(); ?>">Login</a><a href="<?= base_url(); ?>/index.php/service" class="active">Register</a>
                        </div>

                        <form action="<?= base_url(); ?>index.php/service/register" method="post" enctype="multipart/form-data" onsubmit="return validarPasswd()">
                          <div class="row">
                            <div class="col-md-7">
                              <input class="form-control" type="text" name="nombres" placeholder="Nombre completo" required>
                            </div>
                            <div class="col-md-5">
                              <input class="form-control" type="number" name="cc" placeholder="Identificación" required>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-7">
                              <input class="form-control" type="email" name="email" placeholder="E-mail Address" required>
                              <?php echo $this->session->flashdata('palo'); ?>
                            </div>
                            <div class="col-md-5">
                              <input class="form-control" type="password" name="pass" placeholder="Contraseña" required>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-6">
                              <input class="form-control" type="text" name="ciudad" placeholder="Ciudad" required>
                            </div>
                            <div class="col-md-6">
                              <input class="form-control" type="number" name="celular" placeholder="Telefono" required>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12">
                              <input class="form-control" type="text" name="direccion" placeholder="Dirección" required>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-5">
                              <input class="form-control" type="text" name="page" id="pwd1" placeholder="Nombre de la página" required>
                              <?php echo $this->session->flashdata('pala'); ?>
                            </div>
                            <div class="col-md-7">
                              <input class="form-control" type="email" name="paypal" placeholder="Cuenta PayPal" required>
                            </div>
                          </div>
                            <div class="form-button">
                                <button id="submit" type="submit" class="ibtn">Register</button>
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

<!-- Mirrored from brandio.io/envato/iofrm/html/register1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 May 2019 19:55:05 GMT -->
</html>
