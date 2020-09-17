<?php
$filename = "keys.json";


    if (isset($_POST["key"]))
    {
        $key = $_POST["key"];
        $myfile = fopen($filename, "r");
        $keys1 = fread($myfile,1342177);
        $keys = json_decode($keys1);
        foreach ($keys as $shit => $value) {
            if($key == $value)
            {
                echo"whitelisted";
            }
        }

    }
?>