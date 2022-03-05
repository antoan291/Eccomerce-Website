<?php

require('../classes/DBController.php');

require('../classes/Product.php');

require('../classes/Cart.php');


$db = new DBController();

$product = new Product($db);

//product
$product = new Product($db);
$product_shuffle = $product->getData();
//cart
$cart = new Cart($db);

$in_cart = $cart->getCartId($product->getData('cart'));