<?php include 'sidebar.php'; ?>
<!-- isinya -->
<?php
$i1 = mysqli_fetch_assoc(mysqli_query($conn, "SELECT SUM(qty) as totqty FROM laporan WHERE toko = '" . $_SESSION['toko'] . "'"));
$i2 = mysqli_fetch_assoc(mysqli_query($conn, "SELECT SUM(qty*harga_modal) as totdpt FROM laporan WHERE toko = '" . $_SESSION['toko'] . "'"));
$i3 = mysqli_fetch_assoc(mysqli_query($conn, "SELECT SUM(subtotal-qty*harga_modal) as totdpt1 FROM laporan WHERE toko = '" . $_SESSION['toko'] . "'"));
$i4 = mysqli_fetch_assoc(mysqli_query($conn, "SELECT SUM(subtotal) as isub FROM laporan WHERE toko = '" . $_SESSION['toko'] . "'"));
?>
<h1 class="h3 mb-2">Data Laporan</h1>
<div class="row">

  <div class="col-6 col-sm-6 col-md-3 col-lg-3 m-pr-1 m-mb-1">
    <div class="box-laporan">
      <p class="small mb-0">Terjual</p>
      <h5 class="mb-0"><?php echo ribuan($i1['totqty']); ?></h5>
    </div>
  </div>

  <div class="col-6 col-sm-6 col-md-3 col-lg-3 m-pl-1 m-mb-1">
    <div class="box-laporan">
      <p class="small mb-0">Pendapatan</p>
      <h5 class="mb-0">Rp.<?php echo ribuan($i3['totdpt1']); ?></h5>
    </div>
  </div>

  <div class="col-6 col-sm-6 col-md-3 col-lg-3 m-pr-1">
    <div class="box-laporan">
      <p class="small mb-0">Penjualan</p>
      <h5 class="mb-0">Rp.<?php echo ribuan($i2['totdpt']); ?></h5>
    </div>
  </div>

  <div class="col-6 col-sm-6 col-md-3 col-lg-3 m-pl-1">
    <div class="box-laporan">
      <p class="small mb-0">Total</p>
      <h5 class="mb-0">Rp.<?php echo ribuan($i4['isub']); ?></h5>
    </div>
  </div>

</div>


<!-- end isinya -->
<?php include 'footer.php'; ?>