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
        while($row=$result)
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