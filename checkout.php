<?php 
   session_start();
   if(!isset($_SESSION['login'])){
      header("Location:login.php");}
   include('connect.php');
   $products = !empty($_SESSION['cart']) ? $_SESSION['cart'] : []; 
   $hoten = $_SESSION['hoten'];
   $diachi = $_SESSION['diachi'];
   $sdt = $_SESSION['sdt'];  
?>

<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      <title>Checkout- eCommerce Bootstrap4 Template</title>
      <?php
        include('pages/import.php');
      ?>
   </head>
   <body>
      <!-- Add your site or application content here -->
      <?php
        include('pages/menu.php');
      ?>
      <!--breadcrumb area start-->
      <div class="breadcrumb_container ">
         <div class="container-fluid">
            <div class="row">
               <div class="col-12">
                  <nav>
                     <ul>
                        <li>
                           <a href="index.php">Trang chủ ></a>
                        </li>
                        <li>Check out</li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
      <!--breadcrumb area end-->
      <!--Checkout page section-->
      <div class="Checkout_page_section">
         <div class="container">
            <div class="checkout-form">
               <div class="row">
                  <div class="col-lg-6 col-md-6">
                     <form action="#">
                        <h3>CHI TIẾT ĐƠN HÀNG</h3>
                        <div class="row">
                           
                           <div class="col-12 mb-30">
                              <label for="b_c_name">Họ Và Tên <span>*</span></label>
                              <input id="b_c_name" type="text" value="<?php if(isset($hoten)) echo $hoten ?>">     
                           </div>
                           <div class="col-12 mb-30">
                              <label>Địa Chỉ <span>*</span></label>
                              <input placeholder="Địa chỉ" type="text" value="<?php if(isset($diachi)) echo $diachi ?>">     
                           </div>
                           <div class="col-12 mb-30">
                              <input placeholder="Thông tin bổ sung" type="text">     
                           </div>
                           <div class="col-12 mb-30">
                              <label for="b_city">Số Điện Thoại <span>*</span></label>
                              <input id="b_city" placeholder="Phone number" type="text" value="<?php if(isset($sdt)) echo $sdt ?>">     
                           </div>
                        </div>      
                     </form>
                  </div>
                  <div class="col-lg-6 col-md-6">
                     <div class="order-wrapper">
                        <h3>HÓA ĐƠN</h3>
                        <div class="order-table table-responsive mb-30">
                           <table>
                              <thead>
                                 <tr>
                                    <th class="product-name">Product</th>
                                    <th class="product-total">Total</th>
                                 </tr>
                              </thead>
                              <tbody>
                              <?php 
                                 $tongtien = 0;
                                 $n = 0;
                                 $t = 0;
                                 foreach($products as $item) {
                                    $thanhtien = $item['quantity'] * $item['price'];
                                    $tongtien += $thanhtien;
                                    $t += $item['quantity'];
                                    $n++;
                                 
                              ?>
                                 <tr>
                                    <td class="product-name"> <?php echo $item['name']; ?> x <strong><?php echo $item['quantity']; ?></strong></td>
                                    <td class="amount"><?php echo $thanhtien; ?></td>
                                 </tr>
                                 <?php 
                                 }
                              ?>

                              </tbody>
                              <tfoot>
                                 <tr>
                                    <th>Phí Ship</th>
                                    <td>30,000</td>
                                 </tr>
                                 <tr>
                                    <th>Tổng Tiền</th>
                                    <td><strong><?php echo number_format($tongtien+30000) ?></strong></td>
                                 </tr>
                              </tfoot>
                           </table>
                        </div>
                        <div class="payment-method">
                           
                           <div class="order-button">
                           <a href="thanhtoan.php"><button  type="submit" alert("Đặt hàng thành công");>Đặt hàng</button></a>
                           
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--Checkout page section end-->
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
      <script src="assets/js/plugins.js"></script>
      <script src="assets/js/main.js"></script>
   </body>
</html>