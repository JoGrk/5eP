<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka</title>
</head>
<body>
    
    
    <ul>
        <?php
        $link = new mysqli('localhost','root','','ex_biblioteka');

        $sql = "SELECT nazwisko,COUNT(*) AS ile_tytulow FROM autorzy INNER JOIN ksiazki ON autorzy.id=ksiazki.id_autor GROUP BY nazwisko;";

        $result = $link -> query($sql);

        while($row=$result->fetch_assoc()){
            $nazwisko = $row['nazwisko'];
            $ile_tytulow = $row['ile_tytulow'];
            echo"<li>$nazwisko $ile_tytulow</li>";
        }
       


        $link->close();
        ?>
    </ul>
  
</body>
</html>