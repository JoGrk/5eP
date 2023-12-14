<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel Administrowania</title>
    <link rel="stylesheet" href="./styl4.css">
</head>
<body>
    <header>
        <h3>Portal Społecznościowy - panel administratora</h3>
    </header>
    <main>
    <div id="left">
        <h4>Użytkownicy</h4>
        <!-- skrypt 1 -->
        <?php
        $link = new mysqli('localhost','root','','dane4');
        $SQL="SELECT id, imie, nazwisko, rok_urodzenia, zdjecie FROM osoby LIMIT 30;";
        $result = $link-> query($SQL);
        
        while($row=$result->fetch_assoc()){
            $id=$row['id'];
            $imie=$row['imie'];
            $nazwisko=$row['nazwisko'];
            $rok_urodzenia=$row['rok_urodzenia'];
            $wiek=2023-$rok_urodzenia;
        echo "<p>$id. $imie $nazwisko, $wiek lat</p>";
        }
        
        ?>
        <a href="settings.html">Inne ustawienia</a>
    </div>
    <div id="right">
        <h4>Podaj id użytkownika</h4>
        <form action="users.php" method="POST">
            <input type="number" id="id" name="id">
            <button>ZOBACZ</button><br>
        </form>
            <hr>
            <!-- skrypt 2 -->
            <?php
            if(!empty($_POST['id'])){
                $id=$_POST['id'];
                $SQL="SELECT imie, nazwisko, rok_urodzenia, opis, zdjecie, nazwa FROM osoby INNER JOIN hobby ON osoby.Hobby_id=hobby.id WHERE osoby.id=$id;";
                
                while($row=$result->fetch_assoc()){
                    
                    $imie=$row['imie'];
                    $nazwisko=$row['nazwisko'];
                    $opis=$row['opis'];
                    $nazwa=$row['nazwa'];
                    $zdjecie=$row['zdjecie'];
                    $wiek=2023-$rok_urodzenia;  
                    
                    echo "<h2>$id. $imie $nazwisko</h2>";
                    echo "<img src='$zdjecie' alt='$id'>";
                    echo "<p> Rok urodzenia:$rok_urodzenia</p>";
                    echo "<p> Opis: $opis</p>";
                    echo "<p> Hobby: $nazwa</p>";
                }

                 
            }
            $link->close();
            ?>
        
    </div>
    </main>
    <footer>Stronę wykonał:ASASDASDPAS</footer>
</body>
</html>