<!DOCTYPE html>
<html lang="pl-pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>checbox</title>
    <link rel="stylesheet" href="09_style.css">
</head>
<body>
    <?php
    $link= new mysqli('localhost','root','','ex_biblioteka');
    $sql='SELECT * FROM wydawnictwa';
    $result=$link->query($sql);

    ?>

    
    <main>
        <section id="left">
            <form action="09_checkbox.php" method="POST" >
                <?php
                while($row = $result -> fetch_assoc()){
                    $id =  $row['id'];
                    $nazwa = $row['nazwa'];
                    
                    echo "<input type='checkbox' name='w$id' value='$id' > $nazwa ";
                    echo "<br>";

                }
                ?>
                <button>Wyślij</button>
            </form>
        </section>
        <section id="right">
            <?php
                    foreach($_POST as $value){
                    $sql =  "SELECT imie, nazwisko, tytul FROM autorzy INNER JOIN       ksiazki ON autorzy.id = id_autor WHERE id_wydawnictwo = $value";
                    $result = $link->query($sql);
                    while($row = $result->fetch_assoc()){
                        echo '<div class="block">';
                        echo $row['imie'].' '.$row['nazwisko'].'<br>';
                        echo $row['tytul'];
                        echo '</div>';
                    }
                }
                
            ?>
        </section>
    </main>
    <?php
    $link->close();
    ?>
</body>
</html>