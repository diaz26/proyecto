<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from design-graphma.com/demo/sedmy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 04:47:05 GMT -->
<head>
</head>

<body data-spy="scroll" data-target=".navbar-default" data-offset="100">

  <!-- Page Preloader -->

  <div class="warpper clearfix">


    <!-- Header -->


    <!--Header-->

    <!--Begin Hero Section-->

    <section id="home" class="hero">

      <div class="slide-home">

        <div class="slide-item">

          <div class="container">

            <div class="row hero-padd">

              <div class="col-md-6 col-12 col-sm-6">

                <div class="hero-text">

                  <h2><?= $head->ban_1_title; ?></h2>

                  <p><?= $head->ban_1_text; ?></p>

                  <a href="<?= $head->ban_1_url_vid; ?>" class="video-modal play-btn"><img src="<?= base_url(); ?>assets/images/play-button.svg" alt="">Watch video</a>

                </div>

              </div>

              <div class="col-md-6 col-12 col-sm-6">
                <img src="<?= base_url().$head->ban_1_url_img; ?>" alt="" class="img-width">
              </div>

            </div>

          </div>

        </div>

        <div class="slide-item">

          <div class="container">

            <div class="row hero-padd">

              <div class="col-md-6 col-12 col-sm-6">

                <div class="hero-text">

                  <h2><?= $head->ban_2_title; ?></h2>

                  <p><?= $head->ban_2_text; ?></p>

                  </div>

                </div>

                <div class="col-md-6 col-12 col-sm-6">
                  <img src="<?= base_url(),$head->ban_2_url_img; ?>" alt="" class="img-width">
                </div>

              </div>

            </div>

          </div>

        </div>

      </section>

      <!--About-->


      <!--Footer-->

      <footer class="footer" >

        <div class="footer-warpper">


          <!--Request quote-->

          <section class="padd-40 bg-color-2" style="background-color: <?= $head->nav_bg; ?>">

            <div class="container">

              <div class="row">


                <div class="col-md-5 col-lg-5 col-12">
                  <div class="quote-bloc">

                    <p>¡BUSCA TU PRODUCTO!</p>

                  </div>


                </div>

                <div class="col-md-7 col-lg-7 col-12">
                  <form class="form-quote">

                    <div class="form-row">
                      <div class="form-group pd-rg-0 col-md-11 col-lg-11">

                        <div class="input-icon">
                          <span class="icon_globe_alt"></span>
                          <input type="email" class="form-control" placeholder="Enter your website">

                          <button class="btn btn-blue-1">search</button>
                        </div>
                      </div>


                    </div>

                  </form>
                </div>
              </div>

            </div>
          </section>
          <!--Request quote-->


          <div class="footer-top">
            <div class="container">

              <div class="footer-bottom-content clearfix">

                <div class="row">

                  <div class="col-lg-3 col-md-3">



                    <div class="logo-footer">
                      <a class="navbar-brand" href="index-2.html"> <img src="<?= base_url(); ?>assets/images/logo-icon.svg" alt=""><span>Sedmy</span></a>

                    </div>
                    <div class="text-footer">
                      <p>
                        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

                      </p>
                    </div>

                    <!-- Newsletter -->
                    <div class="newsletter-block clearfix">


                      <div class="subscribe-form">

                        <form action="#" method="get" class="subscribe-mail">
                          <div class="form-group ">
                            <input type="email" class="form-control email-input" placeholder="Enter your email">
                            <button type="submit" class="btn btn-subscribe"><i class="arrow_carrot-right_alt2"></i></button>
                          </div>
                          <p class="error-message"></p>
                          <p class="sucess-message"></p>

                        </form>
                      </div>
                    </div>
                    <!-- Newsletter -->


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


                  <div class="col-lg-3 col-md-3">

                    <h5>Menu</h5>

                    <ul class="list-menu">
                      <li>
                        <a href="#">Home </a>
                      </li>

                      <li>
                        <a href="#">About</a>
                      </li>

                      <li>
                        <a href="#">Services</a>
                      </li>

                      <li>
                        <a href="#">Team</a>
                      </li>
                      <li>
                        <a href="#">Pricing</a>
                      </li>
                      <li>
                        <a href="#">Blog</a>
                      </li>


                    </ul>


                  </div>


                  <div class="col-lg-3 col-md-3">

                    <h5>Useful Link</h5>
                    <ul class="list-menu">
                      <li>
                        <a href="#">How it works </a>
                      </li>
                      <li>
                        <a href="#">Terms of Service</a>
                      </li>



                      <li>
                        <a href="#">Privacy policy</a>
                      </li>

                      <li>
                        <a href="#">General Terms</a>
                      </li>
                      <li>
                        <a href="#">Faq</a>
                      </li>
                      <li>
                        <a href="#">Patners</a>
                      </li>

                    </ul>


                  </div>

                  <div class="col-lg-3 col-md-3">

                    <h5>Contact Info</h5>
                    <ul class="list-menu contact-list">
                      <li>
                        71 Amsteroum Avenue Sedney, NY 10243
                      </li>
                      <li>
                        conact@contact.com
                      </li>

                      <li>+369 258 147 258 </li>

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
                  <!-- COPYRIGHT TEXT -->

                  <div class="copyright text-center">
                    <p>2019 © Copyright Design_GrapahMA All rights Reserved.</p>
                  </div>
                  <!-- COPYRIGHT TEXT -->
                </div>


              </div>
            </div>

          </div>
        </div>

      </footer>

      <!--Footer -->


      <!-- jQuery -->
      <script src="<?= base_url(); ?>assets/js/jquery-2.1.1.min.js"></script>

      <!-- Bootstrap Plugins -->
      <script src="<?= base_url(); ?>assets/js/bootstrap.min.js"></script>

      <!-- Template Plugins -->
      <script src="<?= base_url(); ?>assets/js/jquery.easing.js"></script>
      <script src="<?= base_url(); ?>assets/js/wow.min.js"></script>
      <script src="<?= base_url(); ?>assets/js/magnific-popup.min.js"></script>
      <script src="<?= base_url(); ?>assets/js/jquery.scrollUp.min.js"></script>
      <script src="<?= base_url(); ?>assets/js/jquery.ajaxchimp.min.js"></script>
      <script src="<?= base_url(); ?>assets/js/slick.min.js"></script>

      <!-- Main js -->
      <script src="<?= base_url(); ?>assets/js/main.js"></script>




    </body>


    <!-- Mirrored from design-graphma.com/demo/sedmy/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Mar 2019 04:47:26 GMT -->
    </html>
