<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body data-spy="scroll" data-target=".navbar-default" data-offset="100">

  <section id="home" class="hero">

    <div class="slide-home">

      <div class="slide-item">

        <div class="container">

          <div class="row hero-padd">

            <div class="col-md-6 col-12 col-sm-6 ml-auto mr-auto">

              <div class="hero-text">

                <h2>Mis productos </h2>
                <h3>Bienvenido </h3>
                <table class="table table-dark">
                  <tr>
                    <th>nombre  </th>
                    <th>imagen </th>
                    <th>precio </th>
                    <th>Editar </th>
                  </tr>
                  <?php foreach ($productos as $row) {
                    // code...

                 ?>
                  <tr>

                      <td><?php  echo $row->Nombre; ?> </td>
                      <td><img src="<?= base_url().$row->Imagen;?>"> </td>
                      <td><?php  echo $row->Precio;?> </td>
                      <td><a href="<?= base_url()."index.php/Modificar_Productos/Editar/".$row->id;?>"  class="btn btn-info">modificar </a> </td>

                      <?php echo "<br>"?>
                    <?php

                        }
                     ?>


                  </tr>
                </table>
              </div>

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
