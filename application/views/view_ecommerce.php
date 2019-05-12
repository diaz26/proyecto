<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body data-spy="scroll" data-target=".navbar-default" data-offset="100" style="background-color: <?= $page->body_bg; ?>">
  <section id="home" class="hero">
    <div class="slide-home">
      <div class="slide-item">
        <div class="container">
          <div class="row hero-padd">
            <div class="col-md-8 col-12 col-sm-6 mr-auto ml-auto">
              <?php
              foreach ($productos as $key) {
                ?>
                <div class="card" style="width: 18rem;">
                  <img src="..." class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item">Cras justo odio</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                  </ul>
                  <div class="card-body">
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                  </div>
                </div>
                <?php
              }
              ?>
            </div>
            <div class="col-lg-4">
				<div class="block-col">
					<div class="header" style="background-color:<?= $page->nav_bg; ?>; ">Categorias</div>
					<div class="content" >
						<ul>
							<?php
							foreach ($categ as $files) {
								?>
								<li><a href="<?= base_url() ?>index.php/post/categoria/<?php echo $files->categoria; ?>"style="color:black"><?php echo $files->categoria; ?> <span style="color:#2E2E2E">(<?php echo $files->num; ?>)</span></a></li>
								<?php
							}
							?>
						</ul>
					</div>
				</div>
				<div class="block-col">
					<div class="header" style="background-color:<?= $page->nav_bg; ?>; ">Buscar</div>
					<div class="content">
						<form class="" action="<?= base_url() ?>index.php/post/buscar" method="post">
							<input type="text" name="search" style="width:88%" class="form-control" placeholder="Buscar">
							<input type="submit" class="form-control" style="background-color:<?= $page->nav_bg; ?>" value="Buscar" >
						</form>
					</div>
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
</html>
