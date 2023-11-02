<?php
$link = new mysqli('localhost', 'root', '', 'ex_biblioteka');
$sql = "select * from kategorie";
$result = $link->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista wielokrotnego wyboru</title>
</head>
<body>
    <form action="08_lista_wielokrotna.php" method="POST">
    <select name="categories" multiple>
        <?php
        while($row = $result->fetch_assoc()){
            $id = $row['id'];
            $nazwa = $row['nazwa'];
            echo "<option value=$id>$nazwa</option>";
        }
        ?>
        <!-- <option value="1">epika</option>
        <option value="2">dramat</option> -->
    </select>
    <button>Wyślij</button>
    </form>
    <?php
    if(isset($_POST['categories'])){
        echo $_POST['categories'];
    }
    else{
        echo "nalezy wybrac kategorie";
    }

    $link ->close();
    ?>
</body>
</html>