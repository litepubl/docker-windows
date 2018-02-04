<?php
//$s = file_get_contents('http://localhost:8085/ping.htm');
$s = file_get_contents('http://newhub_nginx/ping.htm');
file_put_contents(__FILE__ . '.txt', $s);
