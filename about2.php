<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>About</title>
</head>
<body>
      
    <section data-jarallax data-speed="0.6" class="position-relative text-center text-white jarallax" style="background-image: url('https://images.unsplash.com/photo-1510519138101-570d1dca3d66?ixlib=rb-1.2.1&auto=format&fit=crop&w=1980&q=60');">
    
        <div class="container starbackscreen">
            <div class="row">
                <div class="col-12 text-nb">
                    <img class="brd" src="assets/images/Logo Duck/LG (14).png" width="145" height="145" alt="">
                    <h1 class="display-5 font-weight-bold"> Time Line About Us </h1>
                </div>
            </div>
            
            <section class="container py-5">
                <div class="row">
                    <div class="col-12">
                        <ul class="timeline">
                            <li>
                                <div class="timeline-badge">
                                    <p class="text-dark text-ny"> 6 oct. 1996 </p>
                                </div>
                                <div class="timeline-card">
                                    <h5 class="text-light text-nb"> วันเกิดของเรา </h5>
                                    <p class="text-nw"> เกิดวันที่ 6 ตุลาคม 1996 </p>
                                </div>
                            </li>
                            <li class="inverted">
                                <div class="timeline-badge">
                                    <p class="text-dark text-ny">26 June 2017</p>
                                </div>
                                <div class="timeline-card">
                                    <h5 class="text-light text-nb">เข้าศึกษาที่ มหาวิทยาลัยกาฬสินธุ์</h5>
                                    <p class="text-nw">Kalasin Univesity</p>
                                </div>
                            </li>
                            <li>
                                <div class="timeline-badge">
                                    <p class="text-dark text-ny">10 June 2019</p>
                                </div>
                                <div class="timeline-card">
                                    <h5 class="text-light text-nb">สำเร็จการศึกษา สาขาวิชา คอมพิวเตอร์ธุรกิจ</h5>
                                    <p class="text-nw">Business computer</p>
                                </div>
                            </li>
                            <li class="inverted">
                                <div class="timeline-badge">
                                    <p class="text-dark text-ny">15 Aug 2020</p>
                                </div>
                                <div class="timeline-card">
                                    <h5 class="text-light text-nb">Freelance Web Developer</h5>
                                    <p class="text-nw">Freelance & Web Developer</p>
                                </div>
                            </li>
                            
                            <li class="timeline-arrow">
                                <i class="fa fa-chevron-down"></i>
                            </li>
                        </ul>
                        <div class="text-nb">
                            <h1 class="display-5 font-weight-bold"> Duck Code </h1>
                            <p>รับทำเว็บไซต์ ระบบหน้าบ้าน-หลังบ้าน ทุกชนิด</p>
                        </div>
<!-- Section Star -->
                        <div class="star-about">
                            <div class="star-rating">
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <span>☆</span>
                                <div class="star-current" style="width: 100%;">
                                    <span>★</span>
                                    <span>★</span>
                                    <span>★</span>
                                    <span>★</span>
                                    <span>★</span>
                                </div>
                            </div>
                        </div>

                    </div>
            </section>



        </div>
    </section>

<!-- Section Footer -->
    <?php  include_once("includes/footer.php") ?>




    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/jarallax/dist/jarallax.min.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAOgU18_tVZdK-nJ0iDuutPnbUsTYwE_XA&callback=initMap"></script>
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