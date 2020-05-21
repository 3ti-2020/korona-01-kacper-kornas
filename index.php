<!DOCTYPE html>
<html>
  <head>
    <title> Kacper Kornas</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
  <h1>Kacper Kronas</h1>
  <div class="grid-container">
<div class="box box1">

<input type="button" value="Podstrona" class="btn">
<input type="button" value="Podstrona" class="btn2">

</div>
<div class="box box2">coś</div>
<div class="box box3"></div>
<div class="box box4">
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
            </div>
    <script src="index.js"></script>
</div>
  </body>
</html>
