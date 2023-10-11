<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<!-- 1. Przygotuj raport wyświetlający średnie ceny zabawek dla poszczególnych sklepów. Dane wyświetl w postaci listy numerowanej, adres sklepu powinien być wypisany pogrubioną czcionką
-->
<ol>
<?php
    $sql="SELECT AVG(cena) AS srednia_cena, adres_sklepu FROM zabawka_informacje INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki = sklep_magazyn.id_zabawki INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu = sklep_informacje.id_sklepu GROUP BY adres_sklepu";
    
    $link = new mysqli('localhost', 'root','','5ep');

    $result = $link->query($sql);
    while($row=$result->fetch_assoc()){
        $srednia_cena=$row['srednia_cena'];
        $adres_sklepu=$row['adres_sklepu'];
        echo"<li><b>$adres_sklepu</b> - $srednia_cena</li>";
    }
    $link-> close();
?>
</ol>
<!--
2. Przygotuj raport wyświetlający adres sklepu, zabawkę i stan magazynu w posatci tabeli. Adres sklepu powinien być powinien być wypisany pochyloną czcionką -->
<table>
    <tr>
        <th>
            adres sklepu
        </th>
        <th>
            zabawka
        </th>
        <th>
            stan magazynu
        </th>
    </tr>
 <?php
    $sql = "SELECT adres_sklepu, zabawka, stan_magazynu FROM zabawka_informacje INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki=sklep_magazyn.id_zabawki INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu=sklep_informacje.id_sklepu";

    $link = new mysqli ('localhost','root','','5ep');

    $result = $link -> query($sql);

    while($row = $result -> fetch_assoc()){
        echo "<tr>";
            foreach($row as $pole){
                echo "<td>$pole</td>";
            }
        echo "</tr>";
    }

    $link -> close();
 ?>
 </table>

 <ul>
    <?php
    $sql="SELECT zabawka, cena FROM zabawka_informacje INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki=sklep_magazyn.id_zabawki INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu=sklep_informacje.id_sklepu;";
    
    $link = new mysqli('localhost', 'root', '', '5ep');

    $result = $link->query($sql);

    while ($row = $result->fetch_assoc()){
        $zabawka=$row['zabawka'];
        $cena=$row['cena'];
        echo "<li>$zabawka <i>$cena</i></li>";
    }

    $link -> close();

    ?>

 </ul>
    
</body>
</html>
