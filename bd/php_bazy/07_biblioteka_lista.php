<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka - lista rozwijana</title>
</head>
<body>
    <form action="07_biblioteka_lista.php" method="POST">
        <select  name="authorList" id="authorList">

            <!-- <option value="2">Jan Brzechwa</option>
            <option value="3">Julian Tuwim</option> -->
            <?php
            $link = new mysqli ('localhost', 'root','','ex_biblioteka');
            $sql="SELECT id, imie, nazwisko FROM autorzy";
            $result=$link->query($sql);
            while($row=$result->fetch_assoc()){
                $imie=$row['imie'];
                $nazwisko=$row['nazwisko'];
                $id=$row['id'];
                echo "<option value='$id'>$imie $nazwisko</option>";
            }
            $link->close();
            ?>
        </select>
        <button>Wyślij</button>
    </form>
    <?php
    if(isset($_POST['authorList'])){
        $id = $_POST['authorList'];
        $sql="SELECT imie, nazwisko, tytul FROM autorzy INNER JOIN ksiazki ON autorzy.id=ksiazki.id_autorWHERE id_autor=$id;";
        $link = new mysqli('localhost','root','','ex_biblioteka');
        $result=$link->query($sql);
        echo "<table>";
        while($row=$result->fetch_assoc()){
            
        }
        echo "</table>";


        $link->close();
        
    }

    ?>
    
</body>
</html>