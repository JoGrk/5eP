<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2023.css">
    <title>Video On Demand</title>
</head>
<body>
    <header class="flex">
        <section id='left'>
            <h1>Internetowa wypozyczalnia filmów </h1>
        </section>
        <section id='right'>
            <table>
                <tr>
                    <td>Kryminał</td>
                    <td>Horror</td>
                    <td>Przygodowy</td>
                </tr>
                <tr>
                    <td>20</td>
                    <td>30</td>
                    <td>20</td>
                </tr>
            </table>
        </section>
    </header>
    <main>
        
        <section class='list-film'>
            <h3>Polecamy</h3>
            <div class="flex">
                
                <!-- skrypt 1 -->
            </div>
        </section>
        <section class='list-film'>
            <h3>Filmy fantastyczne</h3>
            <div class="flex">
                <!-- skrypt 2 -->
            </div>
        </section>
        
    </main>
    <footer>
        <form action="video.php" method="POST">
        <label for="delete-film">Usuń film nr:</label>    
        <input type="number" name="delete-film" id="delete-film">
        <button>Usuń film</button>
        <!-- skrypt3 -->
        <p>Stronę wykonał: 12345678911</p>
        </form>

    </footer>
</body>
</html>