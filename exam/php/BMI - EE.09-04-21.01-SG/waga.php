<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styl4.css">
    <title>Twój wskaźnik BMI</title>
</head>
<body>
    <header>
        <section id="top-left">
            <h2>Oblicz wskaźnik BMI</h2>
        </section>
        <section id="top-right">
            <img src="./wzor.png" alt="liczymy BMI">
        </section>
    </header>

    <header>
        <section id="bottom-left">
            <img src="./rys1.png" alt="zrzuć kalorie">
        </section>
        <section id="bottom-right">
            <h1>Podaj dane</h1>
            <form action="waga.php" method="POST">
                Waga: <input type="number" name="waga"> <br>
                Wzrost[cm]: <input type="number" name="wzrost" > <br>
                <button>Licz BMI i zapisz wynik</button>
            </form>
            <!-- skrypt1 -->
            <?php
            $link = new mysqli('localhost','root','','5ep_BMI');

            if(!empty($_POST['waga'])&& !empty($_POST['wzrost'])){
                $waga = $_POST['waga'];
                $wzrost= $_POST['wzrost'];

                $BMI = $waga/($wzrost*$wzrost)*10000;

                echo "Twoja waga: $waga Twój wzrost: $wzrost BMI wynosi: <br> $BMI";
            }
            
            
            ?>
        </section>
    </header>

    <main>
        <table>
            <tr>
                <th>lp.</th>
                <th>Interpretacja</th>
                <th>zaczyna się od...</th>
            </tr>
            <!-- skrypt2 -->

            <?php

            $link -> close();

            ?>
        </table>
    </main>

    <footer>
        Autor:Sebollo 
        <a href="kwerendy.txt">Wynik działania kwerendy 2</a>
    </footer>
   

    
</body>
</html>