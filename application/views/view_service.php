<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from design-graphma.com/demo/sedmy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 04:47:05 GMT -->
<head>
</head>

<body data-spy="scroll" data-target=".navbar-default" data-offset="100">

  <section id="home" class="hero">

    <div class="slide-home">

      <div class="slide-item">

        <div class="container">

          <div class="row hero-padd">

            <div class="col-md-10 col-12 ml-auto mr-auto">
              <h3><b>Formulario Servicios</b></h3>
              <form action="" method="post"  enctype="multipart/form-data">
                <div class="row">
                  <div class="col-md-4 pr-md-1">
                    <div class="form-group">
                      <label><b>Usuario</b></label><br>
                      <input type="text" class="form-control" name="usuario" value="">
                    </div>
                  </div>
                  <div class="col-md-4 px-md-1">
                    <div class="form-group">
                      <label><b>Contaseña</b></label><br>
                      <input type="password" class="form-control" name="password" value="">
                    </div>
                  </div>
                  <div class="col-md-4 pl-md-1">
                    <div class="form-group">
                      <label><b>nombre</b></label><br>
                      <input type="text" class="form-control" name="nombre" value="">
                    </div>
                  </div>
                  <div class="col-md-4 pl-md-1">
                    <div class="form-group">
                      <label><b>apellido</b></label><br>
                      <input type="text" class="form-control" name="apellido" value="">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-5 pr-md-1">
                    <div class="form-group">
                        <img src="<?= base_url().$service->img; ?>" alt="" class="img-width">
                    </div>
                  </div>
                  <div class="col-md-7 pl-md-1">
                    <div class="row">
                      <div class="col-md-12 pr-md-1">
                        <div class="form-group">
                          <label><b>Cedula:</b></label><br>
                          <input type="number" class="form-control" name="cedula" value="">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-12 pr-md-1">
                        <div class="form-group">
                          <label><b>Direccion:</b></label><br>
                          <input type="text" class="form-control" name="direccion" value="">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12 pr-md-1">
                        <div class="form-group">
                          <label><b>Email:</b></label><br>
                          <input type="Email" class="form-control" name="email" value="">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12 pr-md-1">
                        <div class="form-group">
                          <label><b>E-comerce:</b></label><br>
                          <input type="text" class="form-control" name="comerce" value="">
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-12 pr-md-1">
                        <br>
                        <center><input type="submit" value="Servicio" style="width:150px;background-color:<?php echo $head->nav_bg; ?>" class="form-control"></center>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>



          </div>

        </div>

      </div>
    </div>
  </section>

  <script src="<?= base_url(); ?>assets/js/jquery-2.1.1.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/bootstrap.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/jquery.easing.js"></script>
  <script src="<?= base_url(); ?>assets/js/wow.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/magnific-popup.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/jquery.scrollUp.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/jquery.ajaxchimp.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/slick.min.js"></script>
  <script src="<?= base_url(); ?>assets/js/main.js"></script>

</body>
<!-- Mirrored from design-graphma.com/demo/sedmy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 04:47:26 GMT -->
</html>
