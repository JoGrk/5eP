<!DOCTYPE html>
<html lang="PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Opinie klientów</title>
    <link rel="stylesheet" href="styl3.css">
</head>
<body>
    <header>
        <h1>Hurtownia spożywcza</h1>
    </header>
    <main>
        <h2>Opinie naszych klientów</h2>
        <!-- tutaj jest skrypt1 -->
        <?php
        $link = new mysqli('localhost', 'root', '', 'ex_hurtownia');
        $sql="SELECT zdjecie,imie,opinia from klienci inner join opinie ON klienci.id=klienci_id where Typy_id in (2,3)";
        $result = $link->query($sql);
        while($row=$result->fetch_assoc()){
            $zdjecie=$row['zdjecie'];
            $imie=$row['imie'];
            $opinia=$row['opinia'];
            echo "<div class='review'>";
            echo "<img src='$zdjecie' alt='klient'>";
            echo "<blockquote>$opinia</blockquote>";
            echo "<h4>$imie</h4>";
            echo "</div>";
        }
        $link->close();
        ?>
    </main>

    <footer >
        <section >
            <h3>Współpracują z nami</h3>
            <a href="http://sklep.pl/">Sklep 1</a>
        </section>
        <section >
            <h3>Nasi top klienci</h3>
            <ul >
                <!-- tutaj jest skrypt2 -->
                <?php
                $link = new mysqli('localhost', 'root', '', 'ex_hurtownia');
                $sql = "SELECT imie,nazwisko,punkty from klienci order by punkty desc LIMIT 3";
                $result = $link->query($sql);
                while($row = $result ->fetch_assoc()){
                    $imie =$row['imie'];
                    $nazwisko =$row['nazwisko'];
                    $punkty =$row['punkty'];
                    echo "<li>$imie $nazwisko, $punkty pkt</li>";
                    
                }
                $link->close();
                ?>
            </ul>
        </section>
        <section >
            <h3>Skontaktuj się</h3>
            <p>telefon: 997 997 997</p>
        </section>
        <section >
            <h3>autor: 000000000000</h3>
        </section>
    </footer>
    
</body>
</html>