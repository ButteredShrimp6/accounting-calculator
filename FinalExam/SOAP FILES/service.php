<?php
require 'nusoap/lib/nusoap.php';
require 'sendData.php';

$server = new nusoap_server(); // Create a instance for soap server

$server->configureWSDL("AccountancyComputations","urn:businesscomp"); // Configure Web Services Description Language file



$server->register("calculateInterest", array("principal"=>"xsd:float","interestRate"=>"xsd:float", "time" => "xsd:float"), array("return"=>"xsd:string")); 
$server->register("calculateInterestRate", 	array("simplePrincipal"=>"xsd:float","principal"=>"xsd:float", "time" => "xsd:float"), array("return"=>"xsd:float")); 
$server->register("SimpleInterest", array("principal"=>"xsd:float","rate"=>"xsd:float", "time" => "xsd:float"), array("return"=>"xsd:float"));
$server->register("CompoundInterest", array("prin"=>"xsd:float", "rate" => "xsd:float", "time" => "xsd:float", "n" => "xsd:float"), array("return"=>"xsd:float"));
$server->register("calculateDiscount", 	array("listPrice"=>"xsd:float","sellingPrice"=>"xsd:float"), array("return"=>"xsd:float")); 
$server->register("straightLineDepreciation", array("cost"=>"xsd:float", "residual"=>"xsd:float", "assetlife"=>"xsd:float"), array("return"=>"xsd:float"));
$server->register("unitofProduct", array("cost"=>"xsd:float", "salvagevalue"=>"xsd:float", "usefulLife"=>"xsd:float"), array("return"=>"xsd:float"));

$server->service(file_get_contents("php://input"));

?>