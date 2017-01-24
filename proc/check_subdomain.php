<?php
namespace DB;
require_once $_SERVER["DOCUMENT_ROOT"].'/config.php';
require_once $_SERVER["DOCUMENT_ROOT"].'/system/library/db/mpdo.php';
$mPDO = new  mPDO(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
$searchVal = $_POST['option'];
$prod_id= $_POST['product_id'];
switch ($prod_id){
  //Micro
  case 50:
    $option_number='231';
    break;
  //Personal
  case 51:
    $option_number='234';
    break;
  //group
  case 52: 
    $option_number='236';
    break;
  //Business;
  case 53: 
    $option_number='239';
    break;
  default:
    break;
} 
//$option = $searchVal[$option_number];
try {
//$result = $mPDO->query("SELECT * FROM  " . DB_PREFIX ."order_option WHERE product_option_value_id='0' AND value='" .  $searchVal. "'");
  $result = $mPDO->query("SELECT * FROM  " . DB_PREFIX ."order_option WHERE product_option_id='" . $option_number . "' AND value='" . $option ."';");
   $cart_result= $mPDO->query("SELECT * FROM mdx_cart WHERE `option` LIKE '%\"" . $searchVal. "\"%'") ;
#$stmtdom->execute(array(":accountName"=>$option));
#$result= $stmtdom->fetch(PDO::FETCH_ASSOC);

   if($result->num_rows || $cart_result->num_rows){//Do line that so maybe we can say that someone ib registering the same subdomain right now
     //return true;
  echo "<span class='error'><i class='fa fa-exclamation-triangle icon checkko alert-danger'></i> Este nombre no está  disponible. Por favor, elije otro</span>";
   }else {
  //    return false;
    echo "<span class='success'><i class='fa fa-check icon alert-success' aria-hidden='true'></i><span>";
   }

    $dbh = null;
    }
        catch(PDOException $e)
    {
        echo $e->getMessage();
    }       
?>
