<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Eventlog</title>
    <style>
        body{
        text-align:center;
        font-size:18pt;
        background-image: url("bg.png");
       }table{

       }
        th{
            height: 100px;
            background-color: red;


        }
        td{
            text-align:center;
            color:white;
            width:300px;
            height:50px;
        }
        button{
            background:red;
            color:black;
            width:150px;
            height:30px;
        }

    </style>
</head>
<body>

</body>
</html>
<?php
    require_once "config.php";

    $result = mysqli_query($con,"SELECT * FROM userlog");

    echo "<center><table border='1'>
    <tr>
    
    <th>Username</th>
    <th>Activity</th>
    <th>Date&Time</th>

    </tr>";

    while($row = mysqli_fetch_array($result))
    {
        echo "<tr>";
        echo "<td>" . $row['username'] . "</td>";
        echo "<td>" . $row['activity'] . "</td>";
        echo "<td>" . $row['dateandtime'] . "</td>";
        echo "</tr>";
    }
    echo "</table></center>";

    mysqli_close($con);
?>