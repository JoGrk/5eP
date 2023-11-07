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
        if(isset($_POST['idczytelnika']) && isset($_POST['idksiazki'])){
            $idksiazki = $_POST['idksiazki'];
            $idczytelnika = $_POST['idczytelnika'];
            $sql = "INSERT INTO wypozyczenia (id_czytelnik, id_ksiazka, data_wypozyczenia) VALUES ($idczytelnika,$idksiazki,CURRENT_DATE)";
            $link = new mysqli('localhost','root','','ex_biblioteka');
            if($link -> query($sql)){
                echo "Wypozyczenie zostalo pomyslnie dodane.:)";
            }
            
            $link ->close();
        }
        else{
            echo "Uzupelnij dane :(";
        }
    ?>
</body>
</html>