

<footer class="semi-footer p-5 text-center text-md-left">
    <div class="row">
        <div class="col-md-4 text-nbb">
        <a class="navbar-brand" href="#">
            <img src="assets/images/Logo Duck/LG (14).png" width="35" height="35" class="d-inline-block align-top" alt="">
            Duck developer
        </a>
        <p>
            <i class="fa fa-phone-square"></i> 09-5453-4037 <br>
            <i class="fa fa-envelope"></i> Anan.jamnongphan@gmail.com <br>
            <i class="fa fa-address-card"></i>เหล่าใหญ่ กุฉินารายณ์ กาฬสินธุ์ 46110
        </p>
        <a href="https://www.facebook.com/WebAppzStory" target="_blank">
            <i class="fa fa-facebook-square fa-2x"></i>
        </a>
        <a href="https://www.youtube.com/appzstorystudio" target="_blank">
            <i class="fa fa-youtube-square fa-2x"></i>
        </a>
        </div>
        <div class="col-md-3">
        <h4>เมนู</h4>
        <ul class="navbar-nav text-nb">
            <li class="nav-item <?php echo $file_name == 'index' ? 'active': '';?>">
                <a class="nav-link" href="index.php"> หน้าแรก <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item <?php echo $file_name == 'about' ? 'active': '';?>">
                <a class="nav-link" href="about.php"> เกี่ยวกับเรา </a>
            </li>
            <li class="nav-item <?php echo $file_name == 'blog' || $file_name == 'blog-detail' ? 'active': '';?>">
                <a class="nav-link" href="blog.php"> บทความ </a>
            </li>
            <li class="nav-item <?php echo $file_name == 'contact' ? 'active': '';?>">
                <a class="nav-link" href="contact.php"> ติดต่อเรา </a>
            </li>
        </ul>
        </div>
            <div class="col-md-5">
            <h4>แผนที่</h4>
            <!-- <div id="map"></div> -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1913.240101806101!2d103.52935056674386!3d16.451204907774347!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3122b5cbfaa293b3%3A0x4eb08616c5acd04d!2sKalasin%20University%20Language%20Center!5e0!3m2!1sth!2sth!4v1598725248596!5m2!1sth!2sth" width="100%" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
    </div>
</footer>
<footer class="footer">
<span> COPYRIGHT © 2018 
<a href="https://www.facebook.com/teenoii04/" target="_blank">Duck developer</a>
ALL Right Reserved
</span>
</footer>