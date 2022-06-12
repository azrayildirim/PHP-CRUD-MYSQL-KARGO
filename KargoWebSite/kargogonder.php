<?php

include('db.php');

if (isset($_POST['kargoGonder'])) {
  $GonderenID=(int)$_SESSION['kullaniciID'];
  $AliciID=$_POST['AliciID'];
  $GonderiKonu = $_POST['GonderiKonu'];
  $GonderiIcerik = $_POST['GonderiIcerik'];
  $GonderiAgirlik = $_POST['GonderiAgirlik'];
  $GonderiEbatlar = $_POST['GonderiEbatlar'];
  $GonderiAciklama = $_POST['GonderiAciklama'];
  $GonderiDurum ="Gönderi Oluşturuldu";
  $Tarih= date("d-m-Y h:i");
  $GonderiUcret="30.00 TL";

  $query = "INSERT INTO tblGonderiler(GonderenID, AliciID,GonderiKonu,GonderiIcerik,GonderiAgirlik,GonderiEbatlar,GonderiAciklama,GonderiDurum,Tarih,GonderiUcret) 
  VALUES ('$GonderenID', '$AliciID','$GonderiKonu','$GonderiIcerik','$GonderiAgirlik','$GonderiEbatlar','$GonderiAciklama','$GonderiDurum','$Tarih','$GonderiUcret')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Sorgu Başarısız.");
  }

  $_SESSION['message'] = 'Gönderi Başarıyla oluşturuldu';
  $_SESSION['message_type'] = 'success';
  header('Location: anasayfa.php');

}

?>
