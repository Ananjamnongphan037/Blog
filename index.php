<?php 
        require_once('php/connect.php');

        
        $sql = "SELECT * FROM `articles` LIMIT 6";
        $result = $conn->query($sql);
        if (!$result) {
            header('Location: blog.php');
        }

        // print_r($result);
?>



<!DOCTYPE html>
<html lang="en">
<head>
<!-- Css -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=320, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <title>Duck Developer</title>

<!-- COMMON TAGS -->
    <meta charset="utf-8">

<!-- Search Engine -->
    <meta name="title" content="รับทำเว็บไซต์,รับเขียนโปรแกรม">
    <meta name="description" content="รับทำเว็บไซต์ ระบบหน้าบ้าน-หลังบ้าน ออกเเบบระบบ ออกแบบฐานข้อมูล เว็บไซต์รองรับขนาดหน้าจอ (Responsive) ระบบ social sharing,facebook,line, และอื่นๆตามต้องการ">
    <meta name="image" content="https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60">
    <meta name="keywords" content="รับทำเว็บไซต์,html,css,javascript,php,mysql,social sharing">
    <meta name="robots" content="index, follow">
    <meta name="web_author" content="Duck Developer">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!-- Schema.org for Google -->
    <meta itemprop="name" content="Duck Developer รับทำเว็บไซต์ระบบหน้าบ้าน+หลังบ้าน">
    <meta itemprop="description" content="รับทำเว็บไซต์ ระบบหน้าบ้าน-หลังบ้าน ออกเเบบระบบ ออกแบบฐานข้อมูล เว็บไซต์รองรับขนาดหน้าจอ (Responsive) ระบบ social sharing,facebook,line, และอื่นๆตามต้องการ">
    <meta itemprop="image" content="https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60">

<!-- Open Graph general (Facebook, Pinterest & Google+) -->
    <meta name="og:title" content="Duck Developer รับทำเว็บไซต์ระบบหน้าบ้าน+หลังบ้าน">
    <meta name="og:description" content="รับทำเว็บไซต์ ระบบหน้าบ้าน-หลังบ้าน ออกเเบบระบบ ออกแบบฐานข้อมูล เว็บไซต์รองรับขนาดหน้าจอ (Responsive) ระบบ social sharing,facebook,line, และอื่นๆตามต้องการ">
    <meta name="og:image" content="https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60">
    <meta name="og:url" content="https://anan-jamnongphan.firebaseapp.com/">
    <meta name="og:site_name" content="https://anan-jamnongphan.firebaseapp.com/">
    <meta name="og:type" content="website">

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


<!-- Css-->
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="assets/css/style.css">

</head>
<body>
    
<!-- Section Navbar -->
    <?php include_once('includes/navbar.php');?>

<!-- Section Carousel -->
    <section id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="carousel-img" style="background-image: url('https://images.unsplash.com/photo-1527633286632-34bb64366ff3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1080&q=60') ;">
                    <div class="carousel-caption">
                        <h1 class="display-4 font-weight-bold text-nb">Duck developer</h1>
                        <p class="lead text-nb"> html CSS JAVASCRIPT</p>
                    </div>
                    <div class="backscreen"></div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="carousel-img" style="background-image: url('https://images.unsplash.com/photo-1475156104060-dacafe67cb47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1280&q=80') ;">
                    <div class="carousel-caption">
                        <h1 class="display-4 font-weight-bold text-nb">Duck developer</h1>
                        <p class="lead text-nb">Bootstrap4 PHP MySQL</p>
                    </div>
                    <div class="backscreen"></div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="carousel-img" style="background-image: url('https://images.unsplash.com/photo-1489257712451-3a66755ca19c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1280&q=80') ;">
                    <div class="carousel-caption">
                        <h1 class="display-4 font-weight-bold text-nb">Duck developer</h1>
                        <p class="lead text-nb">AngularJS VueJS Firebase</p>
                    </div>
                    <div class="backscreen"></div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </section>

<!-- Section Hope -->    
    <section class="jumbotron jumbotron-fluid text-center">
        <div class="container">
            <h1 class="border-short-bottom">Duck developer</h1>
            <p class="lead">เราไม่เก่งตั้งแต่เริ่มต้น แต่เราใช้เวลาฝึกฝนเรียนรู้ เพื่อที่จะได้เก่งในวันหน้า</p>
        </div>
    </section>

<!-- Blog -->
    <section class="container">
        <h1 class="border-short-bottom text-center">บทความ</h1>
        <div class="row">
        <?php
                if($result->num_rows){
                    while($row = $result->fetch_assoc()){ 
            ?>
                        <section class="col-12 col-sm-6 col-md-4 p-2">
                            <div class="card h-100">
                                <a href="blog-detail.php?id=<?php echo $row['id'] ?>" class="warpper-card-img">
                                    <img class="card-img-top" src="<?php echo $base_path_blog.$row['image'] ?>" alt="Coding">
                                </a>
                                <div class="card-body">
                                    <h5 class="card-title"><?php echo $row['subject'] ?></h5>
                                    <p class="card-text"><?php echo $row['sub-title'] ?></p>
                                </div>
                                <div class="p-3">
                                    <a href="blog-detail.php?id=<?php echo $row['id'] ?>" class="btn btn-primary btn-block">อ่านเพิ่มเติม</a>
                                </div>
                            </div>
                        </section>
            <?php
                                                        }
                                        }else{
                                            ?>
                                            <section class="col-12">
                                                <p class="text-center"> ไม่มีข้อมูล </p>
                                            </section>
                                        <?php } ?>
                                        
        </div>
    </section>



<!-- Section Footer -->
    <?php  include_once("includes/footer.php") ?>
        

    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/jarallax/dist/jarallax.min.js"></script>
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
    

</body>
</html>