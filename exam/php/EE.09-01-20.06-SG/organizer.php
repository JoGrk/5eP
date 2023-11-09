<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl6.css">
    <title>Organizer</title>
</head>
<body>
    <header>
        <section id='baner1'>
            <h2>MÓJ ORGANIZER</h2>
        </section>
        <section id='baner2'>
            <form action="organizer.php" method="POST">
                <label for="wpis">Wpis wydarzenia</label>
                <input type="text" name="wpis" id="wpis">
                <button>ZAPISZ</button>
            </form>
        </section>
        <section id='baner3'>
            <img src="logo2.png" alt="Mój organizer">
        </section>
    </header>

    <main>
        <?php
            $link = new mysqli('localhost','root','','ex_organizer');

            
            if(isset($_POST['wpis'])){
                $wpis = $_POST['wpis'];

                $sql = "UPDATE zadania SET wpis = '$wpis' WHERE datazadania = '2020-08-27';";

                $result = $link->query($sql);


            }
            $sql = "SELECT datazadania, miesiąc, wpis FROM zadania WHERE miesiąc='sierpień'";
            $result = $link->query($sql);

            while($row= $result->fetch_assoc()){
                $datazadania = $row['datazadania'];
                $miesiac = $row['miesiąc'];
                $wpis = $row['wpis'];

                echo"<div class='blok'>";
                echo"<h6>$datazadania,$miesiac</h6>";
                echo"<p>$wpis</p>";
                echo"</div>";
        
            }



        ?>
    </main>

    <footer> 
        <?php

            $sql="SELECT miesiąc, rok FROM zadania WHERE datazadania='2020-08-01';";

            $result = $link->query($sql);

            while($row = $result->fetch_assoc()){

                
                echo"|||miesiąc: ".$row['miesiąc']." , rok: ".$row['rok'];
            }
        ?>
        <p>Stronę wykonał:</p>
    </footer>
</body>
</html>