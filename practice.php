<?php
try{
    $pdo = new PDO("mysql:host=localhost;dbname=navigation",'root','');
} catch (PDOException $ex) {
    echo $ex->getMessag();
}

$sql = "SELECT * FROM menu ORDER BY id";
$stmt = $pdo->prepare($sql);
$stmt->execute();
?>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Kayla Lindstrom">
        <title>Lindstrom Letters</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div id="page">
            <ul>
                <?php while ($row = $stmt->fetch(PDO::FETCH_OBJ)) {
                    $sub_sql = "SELECT * FROM submenu WHERE cat_id=:id";
                    $sub_stmt = $pdo->prepare($sub_sql);
                    $sub_stmt->bindParam(':id', $row->id,PDO::PARAM_INT);
                    $sub_stmt->execute(); 
                    $sub2_sql = "SELECT * FROM submenu2 WHERE cat_id=:id";
                    $sub2_stmt = $pdo->prepare($sub2_sql);
                    $sub2_stmt->bindParam(':id', $row->id,PDO::PARAM_INT);
                    $sub2_stmt->execute(); ?>
                
                <li><a href=""><?php echo $row->name; ?></a>
                    <?php if($sub_stmt->rowCount()){ ?>
                    
                    <ul>
                    <?php while($sub_row = $sub_stmt->fetch(PDO::FETCH_OBJ)) { ?>
                        <li><a href="<?php echo $sub_row->href; ?>"> 
                        <?php echo $sub_row->name;?></a>
                        <?php if($sub2_stmt->rowCount()){ ?>
                
                            <ul>
                            <?php while($sub2_row = $sub2_stmt->fetch(PDO::FETCH_OBJ)) { ?>
                                <li><a href="<?php echo $sub2_row->href; ?>">
                                <?php echo $sub2_row->sub_menu2;?></a></li>
                            <?php } ?>
                            </ul>
                            
                        <?php } ?>
                        </li>
                    <?php } ?>
                    </ul>
                    <?php } ?>
                </li>
                <?php } ?>
            </ul>
        </div>
    </body>
</html>