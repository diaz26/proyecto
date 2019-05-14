<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body data-spy="scroll" data-target=".navbar-default" data-offset="100">
  <section class="hero" id="informacion">
    <div class="slide-home">
      <div class="slide-item">
        <div class="container">
          <div class="row hero-padd" style="padding-top: 100px;">
            <div class="col-md-11 col-12 ml-auto mr-auto">
              <div class="row">
                <div class="col-md-6">
                  <center><h5>Pendientes</h5></center>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Detalles</th>
                        <th scope="col">Opción</th>
                      </tr>
                    </thead>

                    <tbody>
                      <?php
                      foreach ($pedidosP as $key) {
                       ?>
                      <tr>
                        <td><?php echo $key->cod_pedido; ?></td>
                        <td><a href="#">Ver</a> </td>
                        <td><a href="#">Despachado</a></td>
                      </tr>
                      <?php
                    }
                      ?>
                    </tbody>
                  </table>
                </div>
                <div class="col-md-6">
                  <center><h5>Despachados</h5></center>
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Detalles</th>
                        <th scope="col">Opción</th>
                      </tr>
                    </thead>

                    <tbody>
                      <?php
                      foreach ($pedidosD as $key) {
                       ?>
                      <tr>
                        <td><?php echo $key->cod_pedido; ?></td>
                        <td><a href="#">Ver</a> </td>
                        <td><a href="#">Despachado</a></td>
                      </tr>
                      <?php
                    }
                      ?>
                    </tbody>
                  </table>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
<!-- Mirrored from design-graphma.com/demo/sedmy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 04:47:26 GMT -->
</html>
