<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rozgrywki futbolowe</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>

    <header>
        <h2>Światowe rozgrywki piłkarskie</h2>
        <img src="obraz.jpg" alt="boisko">
    </header>

    <section id="mecze">
        <!-- Fajny Skrypt1 -->
        <?php
            $link = new mysqli('localhost', 'root', '', 'ex_pilkarze');

            $sql = 'SELECT zespol1, zespol2, wynik, data_rozgrywki FROM rozgrywka WHERE zespol1 = "EVG";';

            $result = $link->query($sql);

            while($row = $result->fetch_assoc()){
                $zespol1=$row['zespol1'];
                $zespol2=$row['zespol2'];
                $wynik=$row['wynik'];
                $data_rozgrywki=$row['data_rozgrywki'];
                echo"<div class='rozgrywki'>";
                echo"<h3>$zespol1-$zespol2</h3>";
                echo"<h4>$wynik</h4>";
                echo"<p>w dniu: $data_rozgrywki</p>";
                echo"</div>";
            }

            $link->close();

        ?>
    </section>

    <main>
        <h2>Reprezentacja Polski</h2>
    </main>

    <footer>
        <section id="lewy">
            <p>Podaj pozycję zawodników (1-bramkarze, 2-obrońcy, 3-pomocnicy, 4-napastnicy)</p>

            <form action="futbol.php" method="post">
                <input type="number" name="pozycja" id="pozycja">
                <button>Sprawdź</button>
            </form>
            <ul>
                <!-- skrypt2 -->
                <?php
                    $link= new mysqli('localhost','root','','ex_pilkarze');
                

                    if(!empty($_POST['pozycja'])){
                        $pozycja=$_POST['pozycja'];
                        $sql="SELECT imie, nazwisko FROM zawodnik WHERE pozycja_id='$pozycja';";
                
                        $result=$link->query($sql);

                        while($row=$result->fetch_assoc()){
                            $imie=$row['imie'];
                            $nazwisko=$row['nazwisko'];
                            echo"<li><p>$imie $nazwisko</p></li>";
                        }
            
                        $link->close();

                    }
                
                
                ?>
            </ul>
        </section>
        <section id="prawy">
            <img src="zad1.png" alt="piłkarz">
            <p>Autor:000000000000000</p>
        </section>
    </footer>

    
</body>
</html>