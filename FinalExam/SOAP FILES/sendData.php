<?php

function calculateInterest($principal, $interestRate, $time)
{
    $interest = $principal*$interestRate*$time;
    return (string)$interest;
}

function calculateInterestRate($simpleInterest, $principal, $time)
{
    $interestRate = ($simpleInterest * 100)/($principal * $time);
    $answer = $interestRate * 100;
    return $answer; 
}

function SimpleInterest($principal, $rate, $time)
{
    $SimInterest = ($principal* $rate * $time);
    return $SimInterest;
}

function CompoundInterest($prin, $rate, $time, $n)
{
    $amount = $prin * (pow((1 + ($rate / $n)), ($n * $time)));
    return $amount;
}

function calculateDiscount($lisPrice, $sellingPrice)
{
    $discount =  $lisPrice - $sellingPrice;
    $answer =  ($discount * 100)/ $lisPrice;  
    return $answer;
}

function straightLineDepreciation($cost, $residual, $assetlife)
{
    $D = ($cost - $residual) / $assetlife;
    return $D;
}

function unitofProduct($cost, $salvagevalue, $usefulLife)
{
    $DuoP = ($cost - $salvagevalue) / $usefulLife;
    return $DuoP;
}
?>