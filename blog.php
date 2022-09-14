<?php 
        require_once('php/connect.php');
        
        $tag = isset($_GET['tag']) ? $_GET['tag'] : 'all' ;
        $sql = "SELECT * FROM `articles` WHERE `tag` LIKE '%".$tag."%' AND `status` = 'true' ";
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
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
    <meta name="viewport" content="width=320, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <link rel="stylesheet" href="assets/css/style.css">
    <title>บทความ</title>

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

    
</head>
<body>
      
<!-- Section Navbar -->
    <?php include_once('includes/navbar.php');?>


<!-- Section header pallarax -->
    <header data-jarallax data-speed="0.6" class="page-title text-center jarallax" style="background-image: url('https://images.unsplash.com/photo-1571171637578-41bc2dd41cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1980&q=60');">
            
        <div class="blog-image">
            <h1 class="display-4 font-weight-bold text-nb">Blog</h1>
            <p class="lead text-nb"> “สติ” …ทำเรื่องใหญ่ๆ กลายเป็นเรื่องเล็ก “อคติ” …ทำเรื่องเล็กๆ กลายเป็นเรื่องใหญ่</p>

        </div>       
    </header>

<!-- Section Blog -->
    <section class="container py-5">
        <div class="row pb-4">
            <div class="col-12 text-center">
                <div class="btn-group-custom">
                    <a href="blog.php?tag=all">
                        <button class="btn btn-primary <?php  echo $tag == 'all' ? 'active': '' ?> ">ทั้งหมด</button>
                    </a>
                    <a href="blog.php?tag=html">
                        <button class="btn btn-primary <?php  echo $tag == 'html' ? 'active': '' ?> ">html</button>
                    </a>
                    <a href="blog.php?tag=Css">
                        <button class="btn btn-primary <?php  echo $tag == 'Css' ? 'active': '' ?> ">Css</button>
                    </a>
                    <a href="blog.php?tag=Javascript">
                        <button class="btn btn-primary <?php  echo $tag == 'Javascript' ? 'active': '' ?> ">Javascript</button>
                    </a>
                    <a href="blog.php?tag=PHP">
                        <button class="btn btn-primary <?php  echo $tag == 'PHP' ? 'active': '' ?> ">PHP</button>
                    </a>
                    <a href="blog.php?tag=Mysql">
                        <button class="btn btn-primary <?php  echo $tag == 'Mysql' ? 'active': '' ?> ">Mysql</button>
                    </a>
                </div>
            </div>
        </div>
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
    <!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOgU18_tVZdK-nJ0iDuutPnbUsTYwE_XA&callback=initMap"></script> -->
    <script src="assets/js/main.js"></script>

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