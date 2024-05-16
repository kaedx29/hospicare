<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['sessionid']==0))
{
    header('location:logout.php');
} 
else
{
    if(isset($_POST['add_visit'])){
        $userid=$_SESSION['sessionid'];
        $patient_id = $_GET['patient_id'];
        $sql = "SELECT hospital_id FROM tbluser WHERE ID = '$userid'";
        $queryChangeStatus = mysqli_query($con,"UPDATE patients  SET status = 1 WHERE id = '$patient_id'");
        $query = mysqli_query($con,$sql);
        $row=mysqli_fetch_array($query);
        $hospital_id = $row['hospital_id'];  
        $date = date("Y-m-d");
        $rhythm = $_POST['rhythm'];
        $hypertrophies = $_POST['hypertrophies'];

        $insertSql = "INSERT INTO tblvisits(patient_id,admision_date,rhythm,hospital_id,hypertrophies)
        VALUES('$patient_id','$date','$rhythm','$hospital_id','$hypertrophies')";
        $result = mysqli_query($con,$insertSql);
        if(!$result){
            $mgs = "Could not insert data" .mysqli_error($con);
        }else{
            $mgs= "Data insert successfull.";
            header('location:single-patient.php?patient_id=$patient_id;');
        }

        
    }
 ?>
    <?php include 'includes/header.php';?>
        <div class="main-content">
			<div class="title">
				Rekam Medis
			</div>
			<div class="main"> 
                <form role="form" method="post" action="" class="form">
                    <label for="rhythm">Rhythm:</label>
                    <div class="item">    
                        <input type="text" placeholder="Rhythm" name="rhythm" class="input" required>
                    </div>
                    <label for="hypertrophies">Hypertrophies:</label>
                    <div class="item">    
                        <input type="text" placeholder="Hypertrophies" name="hypertrophies" class="input" required>
                    </div>
                    <div class="btn-block">
                    <button type="submit" value="Submit" class="input button" name="add_visit">Submit</button>                   `
                    </div>
                </form>
            </div>
        </div>
    <?php include_once('includes/footer.php');?>                
<?php }?>
