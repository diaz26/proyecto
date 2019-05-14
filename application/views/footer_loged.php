<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
  </head>
  <body>
    <footer class="footer" >
      <div class="footer-warpper">
        <div class="footer-top">
          <div class="container">
            <div class="footer-bottom-content clearfix">
              <div class="row">
                <div class="col-lg-4 col-md-4 mr-auto ml-auto">
                  <div class="logo-footer">
                    <a class="navbar-brand" href="<?php
                    if ($this->session->userdata('ROL')=='Cliente') {
                      echo base_url()."index.php/cliente";
                    }else {
                      echo base_url()."index.php/admin";
                    }
                     ?>"> <img src="<?= base_url().$head->logo; ?>" alt=""><span><?= $head->abreviacion; ?></span></a>
                  </div>
                </div>
                <?php
                if ($this->session->userdata('ROL')=='Cliente') {

                  ?>
                <div class="col-lg-4 col-md-4 mr-auto ml-auto">
                  <h5>Informacion de contacto</h5>
                  <ul class="list-menu contact-list">
                    <li>
                      E-mail : <?= $head->correo_contact; ?>
                    </li>
                    <li>
                      Teléfono : <?= $head->cel_contact; ?>
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
