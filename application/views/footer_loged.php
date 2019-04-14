<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
  </head>
  <body>
    <footer class="footer" >
      <div class="footer-warpper">
        <?php
        if ($this->session->userdata('ROL')=='Cliente') {
         ?>
        <section class="padd-40 bg-color-2" style="background-color: <?= $head->nav_bg; ?>">
          <div class="container">
            <div class="row">
              <div class="col-md-5 col-lg-5 col-12">
                <div class="quote-bloc">
                  <p style="color:<?= $head->color; ?>"><?= $head->sec_text; ?></p>
                </div>
              </div>
              <div class="col-md-7 col-lg-7 col-12">
                <form class="form-quote">
                  <div class="form-row">
                    <div class="form-group pd-rg-0 col-md-11 col-lg-11">
                      <div class="input-icon">
                        <input type="email" class="form-control" placeholder="Search products">
                        <button class="btn btn-blue-1" style="background-color: <?= $head->nav_bg; ?> ; color: <?= $head->color; ?>"><i class="arrow_carrot-right_alt2"></i></button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </section>
        <?php
      }
         ?>
        <div class="footer-top">
          <div class="container">
            <div class="footer-bottom-content clearfix">
              <div class="row">
                <div class="col-lg-4 col-md-4">
                  <div class="logo-footer">
                    <a class="navbar-brand" href="<?= base_url(); ?>"> <img src="<?= base_url().$head->logo; ?>" alt=""><span><?= $head->abreviacion; ?></span></a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4">
                  <h5>Menu</h5>
                  <ul class="list-menu">
                    <?php
                    if ($this->session->userdata('ROL')=='Cliente') {
                      ?>
                      <li>
                        <a href="<?= base_url(); ?>index.php/productos">Perfil</a>
                      </li>
                      <li>
                        <a href="<?= base_url(); ?>index.php/productos">Mis productos</a>
                      </li>
                      <li>
                        <a href="<?= base_url(); ?>index.php/productos">Pedidos</a>
                      </li>
                      <li>
                        <a href="<?= base_url(); ?>index.php/productos">Mi servicio</a>
                      </li>
                      <li>
                        <a href="<?= base_url(); ?>index.php/productos">Mis ganancias</a>
                      </li>
                      <?php
                    }
                     if ($this->session->userdata('ROL')=='Admin') {
                       ?>
                       <li>
                         <a href="<?= base_url(); ?>">BASEO oficial</a>
                       </li>
                       <li>
                         <a href="<?= base_url(); ?>index.php/productos">clientes</a>
                       </li>
                       <li>
                         <a href="<?= base_url(); ?>index.php/login">ganancias</a>
                       </li>
                       <?php
                     }
                      ?>

                  </ul>
                </div>
                <?php
                if ($this->session->userdata('ROL')=='Cliente') {

                  ?>
                <div class="col-lg-4 col-md-4">
                  <h5>Contact Info</h5>
                  <ul class="list-menu contact-list">
                    <li>
                      <?= $head->correo_suport; ?>
                    </li>
                    <li>
                      <?= $head->telefono_contact; ?>
                     </li>
                  </ul>
                </div>
                <?php
              }
                 ?>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-bottom">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="copyright text-center">
                  <p>2019 © Copyright <?= $head->abreviacion; ?> All rights Reserved.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </body>
</html>
