

<input type="button" value="Text" onclick="return change(this);" />

<?php
  while($letters = $sub3_stmt->fetch(PDO::FETCH_OBJ)) {
    //here we render a list of dates
    //each date is a link to a template that renders the letter image and text (like alice.php but only one letter)
    //pass the letter id like we did here via query string param and use it to query the letter
    ?>
      <li><a href="<?php echo $file_path; ?>">
      <?php echo $sub2_row->letters_name;?></a></li>
  <?php } ?>


  <?php
include "../../footer.php"
   ?>
