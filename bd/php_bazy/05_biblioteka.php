<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularz</title>
</head>
<body>

    <form method="POST" action="05_biblioteka.php">
        imie <input type="text" name="firstname" id="firstname"><br>
        nazwisko <input type="text" name="surname" id="surname"><br>
        <button id="submit">Wyślij</button>
        <input type="reset" value="Reset">
    </form>
    <?php

        $link = new mysqli ('localhost','root','','ex_biblioteka');
    if(empty($_POST['firstname']) || empty($_POST['surname'])){
        echo "uzupełnij dane";
    }
    else{
        $firstname = $_POST['firstname']; 
        $surname = $_POST['surname'];
        // echo "$firstname $surname";
        $sql="SELECT tytul, autorzy.imie, autorzy.nazwisko FROM ksiazki INNER JOIN autorzy ON autorzy.id=ksiazki.id_autor INNER JOIN wypozyczenia ON ksiazki.id=wypozyczenia.id_ksiazka INNER JOIN czytelnicy ON wypozyczenia.id_czytelnik=czytelnicy.id WHERE czytelnicy.imie='$firstname' AND czytelnicy.nazwisko='$surname'";
        
        $result = $link -> query($sql);
        while($row=$result->fetch_assoc()){
            $tytul = $row['tytul'];
            $imie = $row['imie'];
            $nazwisko = $row['nazwisko']; 
            echo "<p>$tytul $imie $nazwisko</p>";
        }
       
    }


    $link -> close();

    ?>
    
</body>
</html>