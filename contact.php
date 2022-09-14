<!DOCTYPE html>
<html lang="en">
<head>
<!-- Css -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
    <meta name="viewport" content="width=320, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <link rel="stylesheet" href="assets/css/style.css">
    <title>ติดต่อเรา</title>

<!-- favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="assets/images/favicons/site.webmanifest">
    <link rel="mask-icon" href="assets/images/favicons/safari-pinned-tab.svg" color="#000000">
    <link rel="shortcut icon" href="assets/images/favicons/favicon.ico">
    <meta name="msapplication-TileColor" content="#000000">
    <meta name="msapplication-config" content="assets/images/favicons/browserconfig.xml">
    <meta name="theme-color" content="#2c2c2c">

    
</head>
<body>
      
<!-- Section Navbar -->
    <?php include_once('includes/navbar.php');?>

    
<!-- Section header pallarax -->
    <header data-jarallax data-speed="0.6" class="page-title text-center jarallax" style="background-image: url('https://images.unsplash.com/photo-1503332628839-f788a9eedc84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1980&q=60');">
        
        <div class="blog-image">
            <h1 class="display-4 font-weight-bold text-nb">ข้อมูลการติดต่อ</h1>
            <p class="lead text-nb"> คนเราไม่ได้หยุดเล่น เพราะเติบโตขึ้น แต่คนเราเติบโตขึ้นเพราะหยุดเล่นต่างหาก </p>
            <h1 class="text-nb">▼</h1>
        </div>       
    </header>

    

<!-- Section Blog -->
    <section class="container py-5">
        <div class="row text-center">
            <div class="col-12">
                <h2 class="border-short-bottom">รายละเอียด</h2>
            </div>
            <div class="col-sm-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <i class="fa fa-address-card py-2 fa-4x text-info" aria-hidden="true"></i>
                        <h4 class="card-title">ที่อยู่</h4>
                        <p class="card-text"> เหล่าใหญ่ กุฉินารายณ์ กาฬสินธุ์ 46110 </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <i class="fa fa-phone-square py-2 fa-4x text-info" aria-hidden="true"></i>
                        <h4 class="card-title">เบอร์โทรศัพท์</h4>
                        <p  class="card-text">(+66)95-453-4037</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <i class="fa fa-envelope  py-2 fa-4x text-info" aria-hidden="true"></i>
                        <h4 class="card-title">อีเมลล์</h4>
                        <p  class="card-text">Anan.jamnongphan@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"> แบบฟอร์มติดต่อเรา </h5>
                        <form method="post" action="php/contact.php">
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="name">ชื่อ</label>
                                    <input type="text" id="name" name="name" class="form-control" required placeholder="ชื่อของคุณ">
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="phone">เบอร์โทรศัพท์</label>
                                    <input type="text" id="phone" name="phone" class="form-control" required placeholder="เบอร์โทรศัพท์ของคุณ">
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="email">อีเมลล์</label>
                                    <input type="email" id="email" name="email" class="form-control" required placeholder="example@email.com">
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="message">ข้อความของคุณ</label>
                                <textarea id="message" name="message" rows="5" class="form-control" required placeholder="เขียนข้อความของคุณที่นี้"></textarea>
                            </div>

                    <!-- google Recaptcha -->                            
                            <div id="recaptcha-wrapper" class="text-center my-2">
                                <div class="g-recaptcha d-inline-block" data-callback="recapchaCallback" data-sitekey="6Lf6jb8ZAAAAAE4lHBbrzSiBBWm1ecipP3jkBtvB
                                "></div>
                            </div>
                           
                            <button type="submit" id="btn-submit" name="btn-submit" class="btn btn-primary d-block mx-auto" disabled >ส่งข้อความ</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


<!-- Section Footer -->
    <?php  include_once("includes/footer.php") ?>


    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/jarallax/dist/jarallax.min.js"></script>
<!-- google Recaptcha -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<!-- google Map -->
    <!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOgU18_tVZdK-nJ0iDuutPnbUsTYwE_XA&callback=initMap"></script> -->
    <script src="assets/js/main.js"></script>

    <!-- Firebase-->
    <!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.18.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.18.0/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyD2_j8qG9M3xtivKH1FTmGgW19-lykKmYc",
    authDomain: "anan-jamnongphan.firebaseapp.com",
    databaseURL: "https://anan-jamnongphan.firebaseio.com",
    projectId: "anan-jamnongphan",
    storageBucket: "anan-jamnongphan.appspot.com",
    messagingSenderId: "460356137187",
    appId: "1:460356137187:web:6604876208a0cd98ef95d6",
    measurementId: "G-TD1FQ4819R"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>

<script>
    //  resizeCaptcha();
$(function(){
    // global variables
    captchaResized = false;
    captchaWidth = 304;
    captchaHeight = 78;
    captchaWrapper = $('#recaptcha-wrapper');
    captchaElements = $('#rc-imageselect, .g-recaptcha');

    $(window).on('resize', function() {
        resizeCaptcha();
    });

    resizeCaptcha();
});

function resizeCaptcha() {
    if (captchaWrapper.width() >= captchaWidth) {
        if (captchaResized) {
            captchaElements.css('transform', '').css('-webkit-transform', '').css('-ms-transform', '').css('-o-transform', '').css('transform-origin', '').css('-webkit-transform-origin', '').css('-ms-transform-origin', '').css('-o-transform-origin', '');
            captchaWrapper.height(captchaHeight);
            captchaResized = false;
        }
    } else {
        var scale = (1 - (captchaWidth - captchaWrapper.width()) * (0.05/15));
        captchaElements.css('transform', 'scale('+scale+')').css('-webkit-transform', 'scale('+scale+')').css('-ms-transform', 'scale('+scale+')').css('-o-transform', 'scale('+scale+')').css('transform-origin', '0 0').css('-webkit-transform-origin', '0 0').css('-ms-transform-origin', '0 0').css('-o-transform-origin', '0 0');
        captchaWrapper.height(captchaHeight * scale);
        if (captchaResized == false) captchaResized = true;
    }
}
    function recapchaCallback(){
        $('#btn-submit').removeAttr('disabled');
    }
</script>    

    
</body>
</html>