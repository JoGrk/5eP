<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wydawnictwa - biblioteka</title>
</head>
<body>
    <form action="06_biblioteka.php" method="POST">
        <?php
    $link = new mysqli('localhost', 'root', '', 'ex_biblioteka');
    $sql = "select id, nazwa from wydawnictwa";
    $result = $link->query($sql);
    while($row = $result->fetch_assoc()){
        $id = $row['id'];
        $nazwa = $row['nazwa'];
        echo "<input type='radio' name='wydawnictwo' id='w.$id' value='$id'>";
        echo "<label for='w.$id'>$nazwa</label>";
        echo "<br>";
    }
    $link->close();
        ?>
  
        <button>Wyślij</button>
    </form>
    <?php
        if (!isset($_POST['wydawnictwo'])){
            echo "wybierz wydawnictwo";
        }
        else {

            $id_wydawnictwo = $_POST['wydawnictwo']; 
            $link = new mysqli('localhost','root','','ex_biblioteka');
            $sql="SELECT tytul from ksiazki WHERE id_wydawnictwo=$id_wydawnictwo;";
            $result=$link->query($sql);
            echo "<ul>";
            while($row=$result->fetch_assoc()){
                $tytul = $row['tytul'];
                echo "<li>$tytul</li>"; 
            }
            echo "</ul>";

            $link->close();
        }
        
    ?>
</body>
</html>