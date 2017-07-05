<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Kayla Lindstrom">
        <title>Lindstrom Letters</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
      <div id="page">
        <h1>Welcome, this is Alice's page.</h1>
<?php
  $dir = "images/";
  //open Directory
  if($opendir = opendir($dir)) {
    //read Directory
    while (($file = readdir($opendir)) !== FALSE){
      if ($file!="."&&$file!="..")
        echo "<img src='$dir/$file'><br>";
    }
  }
 ?>
      </div>
    </body>
