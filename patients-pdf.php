<?php 
require ('fpdf.php');
include('includes/dbconnection.php');
$userid = $_GET['userid'];
$hospitalSql = "SELECT hospital_id FROM tbluser WHERE ID= '$userid'";
$getHospitals = mysqli_query($con,$hospitalSql);
$hospitalRow = mysqli_fetch_assoc($getHospitals);
$hospitalID=$hospitalRow['hospital_id'];
$sql = "SELECT * FROM patients WHERE hospital_id = '$hospitalID'";
$res_data = mysqli_query($con,$sql);
$pdf = new FPDF();
$pdf-> AddPage();
$pdf->SetFont('Arial','',10);
$pdf->Cell(15,8,"S/NO",1);
$pdf->Cell(42,8,"Nama.",1);
$pdf->Cell(28,8,"ID No.",1);
$pdf->Cell(32,8,"No. Telepon",1);
$pdf->Cell(42,8,"Rhythm",1);
$pdf->Cell(30,8,"Usia",1);
$id = 1;
while( $row = mysqli_fetch_assoc($res_data)){                
       
        $name = $row['patient_name'];
        $identification = $row['identification'];
        $bloodgroup = $row['blood'];
        $gender = $row['gender'];
        $phone = $row['phone'];
        $rhythm = $row['rhythm'];
        $residence = $row['residence'];
        $age = $row['age'];

        $pdf->Ln();
        $pdf->Cell(15,8,$id,1,0,'C');
        $pdf->Cell(42,8,$name,1);
        $pdf->Cell(28,8,$identification,1);
        $pdf->Cell(32,8,$phone,1);
        $pdf->Cell(42,8,$rhythm,1);
        $pdf->Cell(30,8,$age,1);
        $id +=1;
    }
$pdf->output();
?>