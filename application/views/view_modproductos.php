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

                <h2>Modificar productos </h2>
                <form action="<?=base_url(); ?>index.php/Modificar_Productos/modificar/"  method="post"  enctype="multipart/form-data">
                  <?php //echo $error;?>


                <?php foreach ($productos as $row) {
                  // code...


               ?>
               <label>id </label> <br>
               <input type="hidden" name="id" value="<?php  echo $row->id; ?>"><br>
               <label>Nombre </label> <br>
               <input type="text" name="Nombre" value="<?php  echo $row->Nombre; ?>"><br>
               <label>Marca</label> <br>
               <input type="text" name="Marca" value="<?php  echo $row->Marca; ?>"><br>
               <label>Descripcion </label> <br>
               <input type="text" name="Descripcion" value="<?php  echo $row->Descripcion; ?>"><br>
               <label>Imagen </label> <br>
               <br><img src="<?php echo base_url().$row->Imagen;?>" width="300" height="300" id="imaproducto"><br>

               <input type="file" name="tcarga" id="upload" value="<?php echo $row->Imagen; ?>"><br>
               <small  >Archivos permitidos (.jpg .png  )</small><br><br>
               <script>
               document.getElementById("ver").onchange = function() {
                 var reader = new FileReader(); //instanciamos el objeto de la api FileReader

                 reader.onload = function(e) {
                   document.getElementById("imaproducto").src = e.target.result;
                 };

                 // read the image file as a data URL.
                 reader.readAsDataURL(this.files[0]);
               };

               </script>
                
               <label>Precio </label> <br>
               <input type="text" name="Precio" value="<?php  echo $row->Precio; ?>"><br>
               <?php
                   }
                ?>
              <input type="submit" value="modificar">
              </form>

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
