<?php


require_once(dirname(__FILE__)."/fpdf/fpdf.php");

require_once(dirname(__FILE__)."/fpdi/fpdi.php");


//to do
// the template PDF file
$filename = "reports/leave-report.pdf";
//$filename = "multi.pdf";

$pdf = new FPDI();

$pdf->AddPage();

// import the template PFD
$pdf->setSourceFile($filename);

// select the first page
$tplIdx = $pdf->importPage(1);

// use the page we imported
$pdf->useTemplate($tplIdx);


// set font, font style, font size.
$pdf->SetFont('Times','B',12);

$pdf->Output('reports/'.$name['fname'].' '.$name['mname'].' '.$name['lname'].' History.pdf', 'F');

$filename = 'reports/'.$name['fname'].' '.$name['mname'].' '.$name['lname'].' History.pdf';
header("location:$filename");


?>