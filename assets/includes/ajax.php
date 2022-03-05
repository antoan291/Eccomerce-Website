<?php
require ('../classes/DBController.php');
require('../classes/Product.php');

$db = new DBController();
$product = new Product($db);

if(isset($_POST['itemid'])){
    $result = $product->getProduct($_POST['itemid']);
    echo json_encode($product);

}