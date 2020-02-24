<?php 

$generated_url = '//graph.facebook.com/search?fields=id&q='.'Subotica'.'&type=event&access_token='.'EAACJZAraGZAQEBAGtZAAZALly9FyffCuvelm1MPAIedXSklYo6e5127B0UfF6Ulj8lYRFY0SEO2c4W6T30btU9yxWeY0H1GS2CI19w8DsIEPVf7gaRK4gcmGJB2GfAxBkyqpLpJFxfKcBJfZBHPgXKzyqJMuV9cBfs2GaNdovdDW9GUZBi21YXAxgHAOIWxCgZD'; 


function function_name($generated_url){

    $ch = curl_init();
    
    curl_setopt_array($ch, array(
    
    CURLOPT_URL => $generated_url,
    
    CURLOPT_RETURNTRANSFER => true,
    
    CURLOPT_POST => false,
    
    ));
    
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    
    $arrJsonOutput = curl_exec($ch);
    
    $arrJsonData = json_decode($arrJsonOutput);
    
    echo $arrJsonData;
    curl_close($ch);
    
    }

function_name($generated_url);
?>