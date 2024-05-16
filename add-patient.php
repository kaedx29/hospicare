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
                global $con,$userid;
                $userid=$_SESSION['sessionid'];
                $hospiotalSql = "SELECT hospital_id FROM tbluser WHERE ID= '$userid'";
                $getHospitals = mysqli_query($con,$hospiotalSql);
                $hospitalRow = mysqli_fetch_assoc($getHospitals);
                $hospitalID=$hospitalRow['hospital_id'];
                if(isset($_POST['add_patient'])){
                $name = $_POST['fullname']; 
                $age = $_POST['age']; 
                $residence = $_POST['residence']; 
                $rhythm = $_POST['rhythm']; 
                $phone = $_POST['phone'];
                $bloodgroup = $_POST['bloodgroup'];
                $gender = $_POST['gender'];
                $identification = $_POST['identification']; 


                $query = "INSERT INTO patients(patient_name,identification,blood,gender,phone,residence,rhythm,hospital_id,age) 
                VALUES('$name','$identification','$bloodgroup','$gender','$phone','$residence','$rhythm','$hospitalID','$age')";
                $result = mysqli_query($con,$query);

                if(!$result){
                    die("Error could not insert data  " .mysqli_error($con));
                }else{
                    echo "Data entered succesfully";
                    header('Location: dashboard.php');
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
                    <form action="add-patient.php" method="post" class="form">
                        <p class="form-title">Tambah Pasien</p>
                        <div class="item">
                            <input type="text" name="fullname" placeholder="Masukkan Nama Lengkap Pasien" class="input" required>
                        </div>     
                        <div class="item">    
                            <input type="number" placeholder="Masukkan Usia Pasien" name="age" class="input" required>
                        </div>
                        <div class="item">
                            <input type="text"placeholder="Masukkan Alamat Pasien " name="residence" class="input" required>
                        </div>    
                        <div class="item">    
                            <input type="text" placeholder="Rhythm" name="rhythm" class="input" required>                     
                        </div>                                 
                        <div class="item">
                            <input type="number" placeholder="ID Pasien" name="identification" class="input" required>
                        </div> 
                        <!-- <div class="item">
                            <input type="file" accept="image/*"  placeholder="ID Number" capture="camera" />
                        </div>    -->
                        <div class="item">    
                            <input type="number" placeholder="Masukkan Nomor Ponsel Anda" name="phone" class="input" required>
                        </div>
                        <div class="item">
                            <select name="bloodgroup" id="input" class="input"" required>
                                <option value="">Golongan Darah</option>
                                <option value="A">A</option>
                                <option value="AB">AB</option>
                                <option value="O">O</option>
                            </select>
                        </div>
                        <div class="item">
                            <select name="gender" id=""class="input" required>
                                <option value="">Gender</option>
                                <option value="Male">Laki-Laki</option>
                                <option value="Female">Perempuan</option>
                                <option value="Other">Lainnya</option>
                            </select>
                        </div>
                        <div class="btn-block">
                        <button type="submit" value="Submit" class="input button" name="add_patient">Submit</button>                   `
                        </div>
                    </form>
                </div>
            </div>
        </div>
<?php include_once('includes/footer.php');?>                
        <?php }?>