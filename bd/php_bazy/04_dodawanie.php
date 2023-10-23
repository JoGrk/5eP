<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $name=$_POST['name'];
    $surname=$_POST['surname'];
    $year=$_POST['year'];
    $code = strtolower(substr($name, 0, 2)) . substr($year, -2, 2) . strtolower(substr($surname, 0, 2));
    $sql="INSERT INTO czytelnicy (imie, nazwisko, kod) VALUES ('$name', '$surname', '$code')";
    // echo "$sql";
    $link = new mysqli('localhost','root','','ex_biblioteka');
    if($link->query($sql)){
        echo "Czytelnik: $surname został dodany do bazy danych";
    }
    $link -> close();
    ?>
    
</body>
</html>