<?php 
    $host = "localhost";
    $user = "root"; 
    $pass = ""; 
    $db = "games";
    $port = 3307;

    $connec = new mysqli ($host, $user, $pass, $db, $port);

    if ($connec ->connect_error){
        die("Connection Error". $connec ->connect_error);
    }
    $sql = "SELECT * FROM game";
    $result = $connec->query($sql);

    if ($result->num_rows > 0) {
        echo "<table border='1'>
                <tr>
                    <th>Game ID</th>
                    <th>Game Title</th>
                    <th>Developer(s)</th>
                    <th>Genre(s)</th>
                    <th>Release Date</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Points</th>
                    <th>Controller Support</th>
                </tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $row["game_id"] ."</td>
                    <td>" . $row["game_title"] . "</td>
                    <td>" . $row["dev"] . "</td>
                    <td>" . $row["genre"] . "</td>
                    <td>" . $row["rel_date"] . "</td>
                    <td>" . $row["desc"]. "</td>
                    <td>" . $row["price"]. "</td>
                    <td>" . $row["points"]. "</td>
                    <td>" . $row["control_support"]. "</td>
                </tr>";
        }
    }
?>
