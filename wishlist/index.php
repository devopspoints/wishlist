<?php
$p = $_SERVER['REQUEST_URI'];

$result = [];

switch ($p) {
    case '/':
        echo "Welcome to the wishlist API. Valid endpoints are /wishlist/{user}, /version, /status";
        break;
    case '/status':
        $result['status'] = "ok";
        echo json_encode($result);
        break;
    case '/version':
        $result['version'] = "1";
        echo json_encode($result);
        break;
    default:
        $result['url'] = preg_replace("/^\//", '', $p);
        $result['status'] = "ok";
        echo json_encode($result);
        break;
}
?>
