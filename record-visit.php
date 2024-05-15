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
        $disease = $_POST['diagnosis'];
        $drug = $_POST['drug'];
        $rhythms = $_POST['rhythms'];
        $electricaxisoftheheart = $_POST['electric axis of the heart'];
        $conductionabnormalities = $_POST['conduction abnormalities'];
        $extrasystolies = $_POST['extrasystolies'];
        $hypertrophies = $_POST['hypertrophies'];
        $cardiacpacing = $_POST['cardiac pacing'];
        $ischemia = $_POST['ischemia'];
        $non_specificrepolarizationabnormalities = $_POST['non-specific repolarization abnormalities'];

        $insertSql = "INSERT INTO tblvisits(patient_id,admision_date,diagnosed_with,hospital_id,drugs)
        VALUES('$patient_id','$date','$disease','$hospital_id','$drug')";
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
                    <label for="diagnosed">Diagnosa:</label>
                    <div class="item">    
                        <input type="text" placeholder="Diagnosed With" name="diagnosis" class="input" required>
                    </div>
                    <!-- <label for="rhythms">Rhythms:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="rhythms" class="input" required>
                    </div>
                    <label for="electric axis of the heart">Electric axis of the heart:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="electric axis of the heart" class="input" required>
                    </div>
                    <label for="conduction abnormalities">Conduction abnormalities:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="conduction abnormalities" class="input" required>
                    </div>
                    <label for="extrasystolies">Extrasystolies:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="extrasystolies" class="input" required>
                    </div>
                    <label for="hypertrophies">Hypertrophies:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="hypertrophies" class="input" required>
                    </div>
                    <label for="cardiac pacing">Cardiac pacing:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="cardiac pacing" class="input" required>
                    </div>
                    <label for="ischemia">Ischemia:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="ischemia" class="input" required>
                    </div>
                    <label for="non-specific repolarization abnormalities">Non-specific repolarization abnormalities:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="Non-specific repolarization abnormalities" class="input" required>
                    </div> -->
                    <label for="drug">Obat:</label>
                    <div class="item">    
                        <input type="text" placeholder="Drugs given" name="drug" class="input" required>
                    </div>
                    <div class="btn-block">
                    <button type="submit" value="Submit" class="input button" name="add_visit">Submit</button>                   `
                    </div>
                </form>
            </div>
        </div>
    <?php include_once('includes/footer.php');?>                
<?php }?>
