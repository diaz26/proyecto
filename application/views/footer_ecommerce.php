<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
  </head>
  <body>
    <footer class="footer" >
      <div class="footer-warpper">
        <section class="padd-40 bg-color-2" style="background-color: <?= $page->nav_bg; ?>">
          <div class="container">
            <div class="row">
              <div class="col-md-5 col-lg-5 col-12">
                <div class="quote-bloc">
                  <p style="color:<?= $page->nav_color; ?>"><?= $head->sec_text; ?></p>
                </div>
              </div>
              <div class="col-md-7 col-lg-7 col-12">
                <form class="form-quote">
                  <div class="form-row">
                    <div class="form-group pd-rg-0 col-md-11 col-lg-11">
                      <div class="input-icon">
                        <input type="text" class="form-control" placeholder="<?= $head->search; ?>">
                        <button class="btn btn-blue-1" style="background-color: <?= $page->nav_bg; ?> ; color: <?= $page->nav_color; ?>"><i class="arrow_carrot-right_alt2"></i></button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </section>
        <div class="footer-top">
          <div class="container">
            <div class="footer-bottom-content clearfix">
              <div class="row">
                <div class="col-lg-4 col-md-4 ml-auto mr-auto">
                  <div class="logo-footer">
                    <a class="navbar-brand" href="<?= base_url(); ?>"> <img src="<?= base_url().$page->logo; ?>" alt=""><span><?= $page->nombre; ?></span></a>
                  </div>
                  <ul class="list-social list-inline">
                    <li>
                      <a href="#">
                        <i class="social_facebook "></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="social_twitter "></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="social_googleplus "></i>
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-4 col-md-4 ml-auto mr-auto">
                  <h5>Contact Info</h5>
                  <ul class="list-menu contact-list">
                    <li>
                      <?= $page->email; ?>
                    </li>
                    <li>
                      <?= $page->celular; ?>
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
