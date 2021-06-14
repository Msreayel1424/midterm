<?php 

?>
 
<!DOCTYPE html>
<html>

<head>
<title>Main Page</title>
<link rel="stylesheet" href="style.css" />
</head>

<body>

<form method="post">

<div class="w3-container">

<h1 class="aa">Welcome User</h1>

<div class="form1">

<p>Please Select What you want to do </p>



    <br><br><br>
    
    <center>
        <button type="submit" class="btn" method="post" name="EventLog" id="logout">Eventlog</button><br>
        <button type="submit" class="btn" method="post" name="logout" id="logout">Logout</button><br>
        <br>
        
    </center>

</form>

</div>
</div>
</body>

<?php
session_start();

  include 'config.php';

  $_SESSION["verify"] = false;
  $_SESSION["code_access"] = false;

  if (isset($_REQUEST['logout'])){

        date_default_timezone_set('Asia/Manila');
        $currentDate = date('Y-m-d H:i:s');
        $currentDate_timestamp = strtotime($currentDate);
        $_SESSION["current"] = $currentDate;

        $_SESSION["verify"] = true;
        $_SESSION["code_access"] = true;

        $id = $_SESSION["id"];
        $username = $_SESSION["username"];

        $sql = "INSERT INTO `userlog` (user_id, username, activity, dateandtime) VALUES ('$id', '$username', 'Logged Out', '$currentDate')";
            $result = mysqli_query($con, $sql);
      
        if($result){
            header("Location: ../Activity4withEventLog/index.php");
        }else{

        }      
  } 
  if(isset($_REQUEST['UserView'])){
            header("Location: ../Activity4withEventLog/userview.php");

        }
    if (isset($_REQUEST['BackupDB'])){
            header("Location: ../Activity4withEventLog/backup.php");

        }
        if (isset($_REQUEST['EventLog'])){
            header("Location: ../Activity4withEventLog/eventlog.php");

        }
  

      
?>

</html>
