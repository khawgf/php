<?php 
   include('connect.php');
   session_start();
?>
<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      <title>Contact- eCommerce Bootstrap4 Template</title>
      <?php
        include('pages/import.php');
      ?>
   </head>
   <body>
      <?php
        include('pages/menu.php');
      ?>
      <!--breadcrumb area start-->
      <div class="breadcrumb_container">
         <div class="container-fluid">
            <div class="row">
               <div class="col-12">
                  <nav>
                     <ul>
                        <li>
                           <a href="index.php">Trang chủ ></a>
                        </li>
                        <li>Liên hệ</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
      <!--breadcrumb area end-->
      <!--contact area css satrt-->
      <div class="contact_area ptb-90">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 col-md-7">
                  <div class="contact_map_wrapper">
                     <div class="contact_map mb-40">
                     <div id="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.
                        669658423677!2d106.68006961428692!3d10.759922362441618!2m3!1f0!2f0!3f0!3m2!
                        1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f1b7c3ed289%3A0xa06651894598e488!2zVHLG
                        sOG7nW5nIMSQ4bqhaSBo4buNYyBTw6BpIEfDsm4!5e0!3m2!1svi!2s!4v1619170509976!5m2!
                        1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading=
                        "lazy"></iframe>
                     </div> 
                     </div>
                     
                  </div>
               </div>
               <div class="col-lg-4 col-md-5">
                  <div class="contact_info_wrapper">
                     <div class="contact_title">
                        <h4>Location & Details</h4>
                     </div>
                     <div class="contact_info mb-15">
                        <div class="contact_info_icone">
                           <a href="#"><i class="icofont icofont-location-pin"></i></a>    
                        </div>
                        <div class="contact_info_text">
                           <p><span>Địa chỉ:</span> 273 An Dương Vương - Phường 3 - Quận 5  <br> TP Hồ Chí Minh</p>
                        </div>
                     </div>
                     <div class="contact_info mb-15">
                        <div class="contact_info_icone">
                           <a href="#"><i class="icofont icofont-email"></i></a>    
                        </div>
                        <div class="contact_info_text">
                           <p><span>Email: </span>   KAKA@gmail.com </p>
                        </div>
                     </div>
                     <div class="contact_info mb-15">
                        <div class="contact_info_icone">
                           <a href="#"><i class="icofont icofont-phone"></i></a>    
                        </div>
                        <div class="contact_info_text">
                           <p><span>Điện thoại:</span>  0283 835 2309 </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--contact area css end-->
      
         <!--Brand logo end-->   
      </div>
      <!--organicfood wrapper start--> 
      <div class="footer_food_wrapper">
         <!-- footer start -->
        

                    <?php
        include('pages/footer.php');
      ?>
                <!-- footer end -->
      </div>
      <!--organicfood wrapper end--> 
      <!-- all js here -->
      <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
      <script src="assets/js/popper.js"></script>
      <script src="assets/js/bootstrap.min.js"></script>
      <script src="assets/js/isotope.pkgd.min.js"></script>
      <script src="assets/js/imagesloaded.pkgd.min.js"></script>
      <script src="assets/js/jquery.counterup.min.js"></script>
      <script src="assets/js/waypoints.min.js"></script>
      <script src="assets/js/ajax-mail.js"></script>
      <script src="assets/js/owl.carousel.min.js"></script>
      <!--Map js -->
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlZPf84AAVt8_FFN7rwQY5nPgB02SlTKs"></script>
      <script src="assets/js/map.js"></script>
      <script src="assets/js/plugins.js"></script>
      <script src="assets/js/main.js"></script>
   </body>
</html>