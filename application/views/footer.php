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
                <div class="col-lg-4 col-md-4">
                  <div class="logo-footer">
                    <a class="navbar-brand" href="<?= base_url(); ?>"> <img src="<?= base_url().$head->logo; ?>" alt=""><span><?= $head->abreviacion; ?></span></a>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4">
                  <h5>Menu</h5>
                  <ul class="list-menu">
                    <li>
                      <a href="<?= base_url(); ?>"><?= $head->op1; ?> </a>
                    </li>
                    <li>
                      <a href="<?= base_url(); ?>index.php/service"><?= $head->op3; ?></a>
                    </li>
                    <li>
                      <a href="<?= base_url(); ?>index.php/login"><?= $head->op4; ?></a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-4 col-md-4">
                  <h5>Contact Info</h5>
                  <ul class="list-menu contact-list">
                    <li>
                      <?= $head->correo_contact; ?>
                    </li>
                    <li>
                      <?= $head->cel_contact; ?>
                     </li>
                  </ul>
                </div>
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
