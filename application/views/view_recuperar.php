<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from brandio.io/envato/iofrm/html/forget1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 May 2019 19:55:06 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $head->nombre; ?></title>
    <link rel="shortcut icon" href="<?= base_url().$head->logo; ?>" >
    <link rel="icon" href="<?= base_url().$head->logo; ?>" >
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url(); ?>loged/css/iofrm-theme1.css">
</head>
<body>
    <div class="form-body">
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">

                </div>
            </div>
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Password Reset</h3>
                        <p>To reset your password, enter the email address you use to sign in to iofrm</p>
                        <form>
                            <input class="form-control" type="text" name="username" placeholder="E-mail Address" required>
                            <div class="form-button full-width">
                                <button id="submit" type="submit" class="ibtn btn-forget">Send Reset Link</button>
                            </div>
                        </form>
                    </div>
                    <div class="form-sent">
                        <div class="tick-holder">
                            <div class="tick-icon"></div>
                        </div>
                        <h3>Password link sent</h3>
                        <p>Please check your inbox <a href="http://brandio.io/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="c4adaba2b6a984adaba2b6a9b0a1a9b4a8a5b0a1eaadab">[email&#160;protected]</a></p>
                        <div class="info-holder">
                            <span>Unsure if that email address was correct?</span> <a href="#">We can help</a>.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script data-cfasync="false" src="<?= base_url(); ?>loged/js/email-decode.min.js"></script>
<script src="<?= base_url(); ?>loged/js/jquery.min.js"></script>
<script src="<?= base_url(); ?>loged/js/popper.min.js"></script>
<script src="<?= base_url(); ?>loged/js/bootstrap.min.js"></script>
<script src="<?= base_url(); ?>loged/js/main.js"></script>
</body>

<!-- Mirrored from brandio.io/envato/iofrm/html/forget1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 May 2019 19:55:06 GMT -->
</html>
