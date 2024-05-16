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
        function add_patient()
            {
                global $con;
                if(isset($_POST['add_hospital'])){
                $name = $_POST['hospitalname']; 
                $reg_number = $_POST['regnumber']; 
                $daerah = $_POST['daerah']; 
                $date = date('Y-m-d');

                $query = "INSERT INTO hospitals(hospital_name,reg_number,daerah,created_at) 
                VALUES('$name',' $reg_number',' $daerah','$date')";
                $result = mysqli_query($con,$query);

                if(!$result){
                    die("Error could not insert data  " .mysqli_error($con));
                }else{
                    echo "Data entered succesfully";
                    header('Location: manage-hospitals.php');
                }
                }
            }
            add_patient();
   
 ?>
 <?php include 'includes/header.php';?>
        <div class="main-content">
            <div class="title">
				Tambah Pasien
			</div>
			<div class="main">   
                <div class="form-container">
                    <form action="add-hospital.php" method="post" class="form">
                        <p class="form-title">Tambah Rumah Sakit</p>
                        <div class="item">
                            <input type="text" name="hospitalname" placeholder="Hospital Name" class="input" required>
                        </div>     
                        <div class="item">
                            <input type="text" placeholder="Registration Number" name="regnumber" class="input" required>
                        </div>
                        <div class="item">
                            <select name="daerah" id="input" class="input" required>
                                <option value="">Daerah</option>
                                <option value="palembang">Palembang</option>
                                <option value="ogan ilir">Ogan Ilir</option>
                                <option value="ogan komering ilir">Ogan Komering Ilir</option>
                                <option value="ogan komering ulu"> Ogan Komering Ulu</option>
                                <option value="sekayu">Sekayu</option>
                                <option value="prabumulih">Prabumulih</option>
                                <option value="lahat">Lahat</option>
                            </select>              
                        <div class="btn-block">
                            <button type="submit" value="Submit" class="input button" name="add_hospital">Submit</button>                   `
                        </div>
                    </form>
                </div>
            </div>
        </div>
<?php include_once('includes/footer.php');?>                
        <?php }?>