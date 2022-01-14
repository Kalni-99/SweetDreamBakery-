<?php
session_start();

if (!isset($_SESSION['username'])) {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="images/foods/logo.png" rel="shortcut icon">
        <title>Sweet Dreams Bakery</title>

        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

    </head>
    <!--/head-->

    <!--*********************************************START OF NAVIGATION BAR****************************************-->


    <nav class="navbar navbar-inverse" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index.php">
                    <h4 class="wow fadeInDown" style="margin-top:20px; color:#FFF;"><i class="fa fa-coffee"></i>Sweet Dreams Bakery Ordering</h4>
                </a>
            </div>

            <div class="collapse navbar-collapse navbar-right wow fadeInDown">
                <ul class="nav navbar-nav">
                    <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="available.php"><i class="fa fa-coffee"></i>Sweet Dreams Bakery</a></li>
                    <li class="active"><a href="AboutUs.php"><i class="fa fa-phone"></i> AboutUs</a></li>

                </ul>
            </div>
        </div>
        <!--/.container-->
    </nav>
    <!--/nav-->

    <!--*********************************************START OF CONTACT INFO****************************************-->

    <body>
        <br><br>
        <div class="container">
            <section id="contact-info">
                <center><span style="font-size:35px; font-weight:bold; font-family:verdana; color:#8B8B00;">How to Reach Us?</span></center>

                <div class="left wow fadeInDown">
                    <hr>
                    <div class="col-md-6">
                        <img src="images/banner4.png" class="img-responsive pull-right" />
                    </div>
                    <div class="col-md-6">
                        <p class="lead">
                            <br>
                            <p><span style="font-size:20px; font-weight:bold; font-family:verdana; color:red;">Sweet Dreams Bakery</span>
                                <br><b>Position:</b> Group Leader<b><br>Index Number:</b> MA-DSE-201-F-028<b><br>Name:</b> K. K. K. A. Kapuduwa Kankanamge<br><b>Tel/Phone:</b> 0711779591<b></p>
                            <hr>
                            <span style="font-size:20px; font-weight:bold; font-family:verdana; color:red;">Group Members</span>
                            <p style="margin-top:20px;"><b>T. N. Pathirana MA-DSE-201-F-046</b></p>
                    
                        </p>
                        <hr>
                        <table style="width:80px;">
                            <tr>
                                <td><a href="http://www.facebook.com"><img data-toggle="tooltip" src="images/ico/Facebook.png" class="img-responsive" /></a></td>
                                <td><a href="http://www.instagram.com"><img src="images/ico/icons_Instagram.png" class="img-responsive" /></a></td>
                                <td><a href="http://www.twitter.com"><img src="images/ico/Twitter.png" class="img-responsive" /></a></td>
                                <td><a href="http://www.youtube.com"><img src="images/ico/YouTube.png" class="img-responsive" /></a></td>
                            </tr>
                        </table>

                    </div>
                </div>

            </section>
        </div>
        <br><br>
        <!--*************************************************** FOOTERS **********************************************-->

        <footer id="footer" class="midnight-blue wow fadeInDown">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 wow fadeInDown">
                        &copy; 2021 <a target="_blank" href="#" title="#">Sweet Dreams Bakery</a>. All Rights Reserved.
                    </div>
                    <div class="col-sm-6">
                        <ul class="pull-right wow fadeInDown">
                            <li class="wow fadeInDown"><a href="index.php"><i class="fa fa-home"></i> Home</a></li>

                            <li class="wow fadeInDown"><a href="AboutUs.php"><i class="fa fa-phone"></i> AboutUs</a></li>
                            <li class="wow fadeInDown"><a href="#loginModal" data-toggle="modal" data-target="#loginModal"><i class="fa fa-lock"></i> Admin</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!--/#footer-->
        <?php include('loginModal.php') ?>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>

    </html>

<?php

} else if (isset($_SESSION['username'])) {

    include('includes/admin.php');
} ?>