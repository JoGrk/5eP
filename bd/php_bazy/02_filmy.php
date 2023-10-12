<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie</title>
</head>
<body>
  <?php

  $link = new mysqli ('localhost','root','','5eP');

  $sql = "SELECT * FROM movie_table WHERE rating = 'g'";
  $result = $link -> query($sql);
  echo"<ul>";
  while($row = $result -> fetch_assoc()){ 

    $title = $row['title'];
    $category = $row['category']
    echo "<li> $title $category </li>"
  }
 
  $link -> close();
  ?>  
</body>
</html>