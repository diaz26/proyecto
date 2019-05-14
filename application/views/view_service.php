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
          <div class="row hero-padd" style="padding-top: 100px">
            <div class="col-md-5 col-12 col-sm-12">
              <div class="hero-text">
                <center><h3 style="font-size:28px; padding-bottom: 7px"><?= $service->nombre; ?></h3>
                  <p><?= $service->descripcion; ?></p>
                  <img src="<?= base_url().$service->img; ?>" alt="" class="img-width"></center>
                  <!--p><?= $service->valor_text; ?> <span style="color:black ; font-size: 25px" ><?= $service->valor; ?>$ USD</span> </p>
                  <a href="<?= base_url(); ?>payment/secure_s" class="form-control" style="text-align: center;width: 150px;color:<?= $head->color; ?> ;background-color: <?= $head->nav_bg; ?>"><?= $service->button; ?></a-->
                </div>
              </div>
              <div class="col-md-7 col-12 col-sm-12" style="padding-left: 50px;padding-right: 50px;background-color: #F7F7F7" >
                <form class="" action="<?= base_url(); ?>index.php/service/register" method="post" enctype="multipart/form-data">
                  <center><h5>Registro</h5></center>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Correo Electrónico*</label>
                        <input type="email" name="email" class="form-control" required>
                      </div>
                      <div class="input-group">
                        <?php echo $this->session->flashdata('palo'); ?>
                      </div>
                    </div><!-- End .col-sm-4 -->
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Contraseña*</label>
                        <input type="password" name="pass" class="form-control" required>
                      </div><!-- End .form-group -->
                    </div><!-- End .col-sm-4 -->
                  </div>
                  <div class="row">
                    <div class="col-sm-8">
                      <div class="form-group">
                        <label>Nombre completo*</label>
                        <input type="text"  name="nombres" class="form-control" required>
                      </div><!-- End .form-group -->
                    </div><!-- End .col-sm-4 -->
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Cédula de ciudadanía*</label>
                        <input type="number" name="cc" class="form-control" required>
                      </div><!-- End .form-group -->
                    </div><!-- End .col-sm-4 -->
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Ciudad*</label>
                        <input type="text" name="ciudad" class="form-control" required>
                      </div><!-- End .form-group -->
                    </div><!-- End .col-sm-4 -->
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Celular*</label>
                        <input type="number" name="celular" class="form-control" required>
                      </div><!-- End .form-group -->
                    </div><!-- End .col-sm-4 -->
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label>Dirección*</label>
                        <input type="text" name="direccion" class="form-control" required>
                      </div><!-- End .form-group -->
                    </div><!-- End .col-sm-4 -->
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label>Nombre de la Página (Sin espacios)*</label>
                            <input type="text" name="page" class="form-control" required>
                          </div><!-- End .form-grousp -->
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label>Cuenta Paypal (acá recibirás tus pagos)*</label>
                            <input type="email" name="paypal" class="form-control" required>
                          </div><!-- End .form-group -->
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Logo*</label>
                        <img src="<?= base_url(); ?>images/defecto.jpg" width="20%" id="logo" alt="">
                        <input type="file" style="" class="form-control" name="logo" id="upload">
                        <script>
                        document.getElementById("upload").onchange = function() {
                          var reader = new FileReader(); //instanciamos el objeto de la api FileReader

                          reader.onload = function(e) {
                            document.getElementById("logo").src = e.target.result;
                          };

                          // read the image file as a data URL.
                          reader.readAsDataURL(this.files[0]);
                        };

                        </script>
                      </div><!-- End .col-sm-4 -->
                    </div>
                  </div>
                  <div class="row" style="padding-bottom: 10px">
                    <div class="col-sm-12">
                      <center><input type="submit" value="Registrarme" style="width:150px;background-color:<?php echo $head->nav_bg; ?>" class="form-control"></center>
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
