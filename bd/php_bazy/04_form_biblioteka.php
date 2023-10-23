<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="04_dodawanie.php" method="post">
    <label for="name">imię:</label>
    <input type="text" id="name" name="name"><br>

    <label for="surname">nazwisko:</label>
    <input type="text" id="surname" name="surname"><br>

    <label for="year">rok urodzenia:</label>
    <input type="number" id="year" name="year"><br>

    <button>DODAJ</button>
    
    </form>
    <?php
    $db = new mysqli('localhost', 'root', '', 'ex_biblioteka');
        $sql = "SELECT imie, nazwisko FROM czytelnicy";
        $result=$db -> query($sql);
        echo "<ul>";
        while($row = $result -> fetch_assoc()){
            $imie=$row['imie'];
            $nazwisko=$row['nazwisko'];
            echo "<li> $imie $nazwisko </li>";

            
        }
        echo "</ul>";
        
    $db -> close();
    ?>
</body>
</html>