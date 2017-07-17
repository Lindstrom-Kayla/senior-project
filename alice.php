

<?php
    include '../../header.php';
?>

<input type="button" value="Text" onclick="return change(this);" />

<script type="text/javascript">
function change( el )
{
    if ( el.value === "Text" )
         el.value = "Images";
    else
         el.value = "Text";
}
</script>

<?php
  $dirimg = "images/";
  //open Directory
  if($opendirimg = opendir($dirimg)) {
    //read Directory
    while (($file = readdir($opendirimg)) !== FALSE){
      if ($file!="." && $file!=".." && empty(preg_match("/^\..*$/", $file)))
        echo "<img id='letters' src='$dirimg/$file'><br>";
    }
  }
 ?>

<?php
 $directory = "text/";
 $dir = opendir($directory);
 while (($file = readdir($dir)) !== false) {
   $filename = $directory . $file;
   $type = filetype($filename);
   if ($type == 'file') {
      $contents = file_get_contents($filename);
      $items = explode('¬', $contents);
      echo '<table width="500" border="1" cellpadding="4">';
      foreach ($items as $item) {
        echo "<tr><td>$item</td></tr>\n";
      }
      echo '</table>';
   }
 }
 closedir($dir);
?>

  <?php
include "../../footer.php"
   ?>
