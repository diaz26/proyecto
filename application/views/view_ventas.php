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
            <div class="col-md-7 col-12 ml-auto mr-auto">

              <center><h5>Ventas</h5></center>
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">Codigo pedido</th>
                    <th scope="col">Detalles</th>
                    <th scope="col">Fecha de pago</th>
                    <th scope="col">Monto pagado</th>
                  </tr>
                </thead>

                <tbody>
                  <?php
                  foreach ($pedidos as $key) {
                    ?>
                    <tr>
                      <td><?php echo $key->cod_pedido; ?></td>

                      <td><a href="#" data-toggle="modal" data-target="#productos<?= $key->id; ?>">Ver</a> </td>
                      <td><?= $key->fecha_pago; ?></td>
                      <td><?= $key->monto; ?> $USD</td>
                    </tr>
                    <div class="modal fade" id="productos<?= $key->id; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true" style="z-index: 99999999;">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Productos pedidos: <?= $key->cod_pedido; ?></h5>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">

                            <?php
                            foreach ($products as $ass) {
                              if ($ass->cod_pedido==$key->cod_pedido) {
                                ?>
                                <div class="row">
                                  <div class="col-2">
                                    <img src="<?= base_url().$ass->img; ?>" width="100%" alt="">
                                  </div>
                                  <div class="col-8">
                                    <p> <?= $ass->descri; ?> </p>
                                  </div>
                                  <div class="col-2">
                                    <p> <?= $ass->cantidad; ?> </p>
                                  </div>
                                </div>
                                <?php
                              }
                            }
                            ?>

                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          </div>
                        </div>
                      </div>
                    </div>
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
  </section>
</body>
<!-- Mirrored from design-graphma.com/demo/sedmy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 04:47:26 GMT -->
</html>
