<?php
    include_once('php/connect.php');
    $sql = " SELECT * FROM `articles` WHERE `id`= '".$_GET['id']."' " ;
    $result = $conn->query($sql) or die($conn->error);

    // echo $result->num_rows;
    if($result->num_rows > 0){
        $row = $result->fetch_assoc();
    }else{
        header('Location: blog.php');
    }


    $sql_RAND = " SELECT * FROM `articles` WHERE `status`= 'true' ORDER BY RAND() LIMIT 6 " ;
    $result_RAND = $conn->query($sql_RAND) or die($conn->error);

    // if($result_RAND->num_rows > 0){
    //     $row_RAND = $result_RAND->fetch_assoc();
    // }
    // echo '<pre>',print_r($row_RAND),'</pre>';
?>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Css -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="node_modules/owl.carousel/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="node_modules/owl.carousel/dist/assets/owl.theme.default.min.css">
    <link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
    <meta name="viewport" content="width=320, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <link rel="stylesheet" href="assets/css/style.css">
    <title> <?php echo $row['subject'] ?> </title>

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

<!-- socialsharing -->
    <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5f4be9c9f73f72001282f902&product=inline-share-buttons" async="async"></script>

    
</head>
<body>
      
<!-- Section Navbar -->
    <?php include_once('includes/navbar.php');?>


<!-- Section header pallarax -->
    <header data-jarallax data-speed="0.6" class="text-center jarallax" style="background-image: url(<?php echo $base_path_blog.$row['image'];  ?>);">
        <div class="blog-image">
            <h1 class="display-4 font-weight-bold text-nb"><?php echo $row['subject'] ?></h1>
            <p class="lead text-nb"><?php echo $row['sub-title'] ?></p>

        </div>       
    </header>


    <!-- Section Blog -->
    <section class="container blog-content">
        <div class="row">
            <div class="col-12">
                <?php echo $row['detail']; ?>      
            </div>
            <div class="col-12">
                <hr>
                <div class="sharethis-inline-share-buttons"></div>
                <p class="text-right text-muted"> <?php echo date_format(new DateTime ($row['updated_at']),"j F Y H:i:s"); ?> </p>

            <div class="col-12">
                <div class="fb-comments"
                    a-width="100%"
                    data-href="http://localhost/a/blog-detail.php?id_Ananjamnongphan=<?php echo $row['id']; ?>"
                    data-numposts="5" 
                    data-width="100%">
                </div>
            </div>
            <div class="owl-carousel owl-theme">
                <?php while($row_RAND = $result_RAND->fetch_assoc()) { ?>  
                    <section class="col-12 p-2">
                        <div class="card h-100">
                            <a href="blog-detail.php?id=<?php echo $row_RAND['id'] ?>" class="warpper-card-img">
                                <img class="card-img-top" src="<?php echo $base_path_blog.$row_RAND['image'] ?>" alt="Coding">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row_RAND['subject'] ?></h5>
                                <p class="card-text"><?php echo $row_RAND['sub-title'] ?></p>
                            </div>
                            <div class="p-3">
                                <a href="blog-detail.php?id=<?php echo $row_RAND['id'] ?>" class="btn btn-primary btn-block">อ่านเพิ่มเติม</a>
                            </div>
                        </div>
                    </section>
                <?php } ?>
                </div>
            </div>
        </div>
    </section>



<!-- Section -->


<!-- Section Footer -->
    <?php   include_once('includes/footer.php') ?>




    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="node_modules/jarallax/dist/jarallax.min.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOgU18_tVZdK-nJ0iDuutPnbUsTYwE_XA&callback=initMap"></script>
    <script src="assets/js/main.js"></script>
    <script>
        /** blog-detail showblog */
        $(document).ready(function(){
            $('.owl-carousel').owlCarousel({
                loop: true,
                nav: false,
                dots: true,
                responsive:{
                    0:{
                        items:1
                    },
                    600:{
                        items:2
                    },
                    1000:{
                        items:3
                    }
                }
            });
        });
    </script>

    <!-- Firebase-->
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