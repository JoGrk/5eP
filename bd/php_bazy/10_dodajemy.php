<?php
    $link = new mysqli('localhost','root','','ex_biblioteka');
   
    $sql = "SELECT id, imie, nazwisko FROM czytelnicy";
    $result = $link ->query($sql);
    $rowsCzyt = $result -> fetch_all(1);

    $sql = "SELECT id, tytul FROM ksiazki";
    $result = $link -> query($sql);
    $rowsKsi = $result ->fetch_all(1);

    $link -> close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="10_dodaj.php" method="POST">
        <select name="idczytelnika">
            <?php
            foreach($rowsCzyt as $row){
                $id = $row['id'];
                $imie = $row['imie'];
                $nazwisko = $row['nazwisko'];

                echo "<option value='$id'>$imie $nazwisko</option>";
            }
            ?>
        </select>
        <select name="idksiazki">
            <?php
            foreach($rowsKsi as $row){
                $id = $row['id'];
                $tytul = $row['tytul'];

                echo"<option value='$id'>$tytul</option>";
            }
            ?>
        </select>
        <button>Wyslij</button>
    </form>
    <?php
    
    ?>
</body>
</html>