<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container">
<?php
            $conn=new mysqli('localhost','kornas','123','kornas');
            $sql=('SELECT imie, dzial FROM prac,dzial WHERE(dzial.id = prac.id_dzial)');
            $result=$conn->query($sql);
            echo("<table>");
            echo("<tr>
            <th>Imie</th>
            <th>Dzial</th>
            </tr>");
                while($wiersz=$result->fetch_assoc()){
                    echo("<tr>");
                    echo("<td>".$wiersz['imie']."</td><td>".$wiersz['dzial']."</td>");
                    echo("</tr>");
             }
            echo("</table>");
            ?>
</body>
    </div>

</html>