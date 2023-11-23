<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Port Lotniczy</title>
    <link rel="stylesheet" href="styl5.css">
</head>
<body>
    <header>
        <section id="b1">
            <img src="zad5.png" alt="logo lotnisko">
        </section>
        <section id="b2">
            <h1>Przyloty</h1>
        </section>
        <section id="b3">
            <h3>Przydatne linki</h3>
            <a href="kwerendy.txt" target="_blank">Pobierz ...</a>
        </section>
    </header>

    <main>
        <table>
            <tr>
                <th>czas</th>
                <th>kierunek</th>
                <th>numer rejsu</th>
                <th>status</th>
            </tr>
            <!-- skrypt 1 -->
        <?php
        $link = new mysqli('localhost', 'root', '', 'ex_przyloty');
        $sql = "SELECT czas, kierunek, nr_rejsu, status_lotu FROM przyloty ORDER BY czas";
        $result=$link->query($sql);
        while($row=$result->fetch_assoc()){
            echo "<tr>";
            foreach($row as $field){
                echo "<td>$field</td>";
            }
            echo "</tr>";
        }
        $link->close();
        ?>
        </table>
    </main>

    <footer>
        <section id="f1">
            <!-- skrypt 2 -->
            <?php
            if(!isset($_COOKIE['ciasteczko'])){
                setcookie('ciasteczko','smaczne',time()+60*60*2);
                echo "<p><b>Dzień dobry! Strona lotniska używa ciasteczek</b></p>";
            }else{
                echo "<p><i>Witaj ponownie na stronie lotniska</i></p>";
            }
            ?>  
        </section>
        <section id="f2">
            Autor:.....
        </section>
    </footer>
    
</body>
</html>