<?php
session_start();

$conn = mysqli_connect(
  'localhost',
  'root',
  '12345',
  'KARGO'
) or die(mysqli_erro($mysqli));

?>
