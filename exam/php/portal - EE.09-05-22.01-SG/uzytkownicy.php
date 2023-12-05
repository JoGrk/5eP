<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal spoełcznościowy</title>
    <link rel="stylesheet" href="styl5.css">
</head>
<body>
    <header>
        <div id='left-header'>
            <h2>Nasze osiedle</h2>
        </div>
        <div id='right-header'>
            <!-- skrypt1 -->
            <?php
            $link = new mysqli('localhost','root','','ex_portal');
            $sql="SELECT COUNT(*) FROM dane;";
            $result=$link ->query($sql);
            while($tab=$result -> fetch_row()){
                echo "<h5>Liczba użytkowników portalu $tab[0]</h5>";
            }
            $link -> close();
            ?>
        
        </div>
    </header>
    <main>
        <div id='left'>
            <h3>Logowanie</h3>
            <form action="uzytkownicy.php" method="post">
                login 
                <br>
                <input type="text" name="login">
                <br>
                hasło
                <br>
                <input type="password" name="password">
                <button>Zaloguj</button>
            </form>
            
        </div>
        <div id='right'>
            <h3>Wizytówka</h3>
            <section>
                <?php
                if(!empty($_POST['login']) && !empty($_POST['password'])){
                    $login = $_POST['login'];
                    $password = $_POST['password'];
                    $link = new mysqli('localhost','root','','ex_portal');
                    $sql="SELECT haslo 
                    FROM uzytkownicy
                    WHERE login = '$login';";
                    $result=$link->query($sql);
                    if($result->num_rows==0){
                        echo "login nie istnieje";
                    }
                    else{
                        $row = $result ->fetch_assoc();
                        if(sha1($password)!=$row['haslo']){
                            echo ' hasło nieprawidłowe';
                        }
                        else{
                            // hasła się zgadzają
                            $sql="SELECT login, rok_urodz, przyjaciol, hobby,zdjecie 
                            FROM uzytkownicy
                            INNER JOIN dane ON dane.id = uzytkownicy.id
                            WHERE login='$login'";
                            $result=$link->query($sql);
                            $row = $result->fetch_assoc();
                            $wiek = DATE("Y")-$row['rok_urodz'];
                            $hobby = $row['hobby'];
                            $zdjecie = $row['zdjecie'];
                            $przyjaciol = $row['przyjaciol'];
                            echo "<div id='wizytowka'>";
                            echo "<img src='$zdjecie' alt='osoba'>";
                            echo "<h4>$login ($wiek)</h4>";
                            echo "<p>hobby: $hobby</p>";
                            echo "<h1><img src='icon-on.png'> $przyjaciol</h1>";
                            echo "<a href='dane.html'><button>Więcej informacji</button></a>";
                            echo "</div>";

                        }
                    }
                    $link ->close();
                }
                ?>
            </section>

                
        </div>
    </main>
    <footer>
        <p>Stronę wykonał: 000000000</p>

    </footer>
</body>
</html>