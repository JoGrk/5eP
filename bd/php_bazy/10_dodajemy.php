<?php
    $link = new mysqli('localhost','root','','ex_biblioteka');
    $sql = "SELECT imie, nazwisko FROM czytelnicy";
    $result = $link ->query($sql);
    $rowsCzyt = $result -> fetch_all(1);
    $sql = "SELECT tytul FROM ksiazki";
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
        <select name="idczytelnika"></select>
        <select name="idksiazki"></select>
        <button>Wyslij</button>
    </form>
    <?php
    
    ?>
</body>
</html>