<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forum o psach</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>

<header>
    <h1>Forum miłośników psów</h1>
</header>

<main>
    <div class="left">
        <img src="avatar.png" alt="Użytkownik forum">
        <?php
        $con= new mysqli('localhost','root','','ex_forumpsy');

        $kw1="SELECT pytanie, nick, postow FROM konta INNER JOIN pytania ON konta.id = pytania.konta_id
        WHERE pytania.id = 1;";

        $result = $con->query($kw1);

        while($row = $result->fetch_assoc()){
            $nick = $row['nick'];
            $postow = $row['postow'];
            $pytanie = $row['pytanie'];
        

                echo"<h4><$nick></h4>";
                echo"<p><$postow></p>";
                echo"<p><$pytanie></p>";
        };




        ?>
        <video src="video.mp4" controls loop></video>
    </div>

    <div class="right">
        <form action="index.php" method="post">
            <textarea name="" id="" cols="40" rows="4"></textarea>
            <button>Dodaj odpowiedź</button>
            <h2>Odpowiedzi na pytanie</h2>
            <ol>
                <li>
                    <!-- skrypt3 -->
                </li>
            </ol>
        </form>
    </div>
</main>

<footer>
    Autor:000000
    <a href="http://mojestrony.pl/" target="_blank">Zobacz nasze realizacje</a>
</footer>

    
</body>
</html>