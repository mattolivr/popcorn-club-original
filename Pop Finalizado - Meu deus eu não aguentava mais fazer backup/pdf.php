<?php
	session_start();
	define( 'FPDF_FONTPATH', 'font/' ); 
	require_once( "fpdf/fpdf.php" );
	require_once("db/format.php");

	$PDFquery = $_SESSION['req_query'];
	$exp = explode(",",$_REQUEST['mens']);
	$PDFtable = explode(" ", $exp[0]);
	unset($_SESSION['req_query']);

	$_pdf = new FPDF( 'P', 'cm', 'A4' );
	$_pdf->Open();
	$_pdf->AddPage(); 

	$_pdf->AddFont('courier', '', 'courier.php');
	$_pdf->setLeftMargin(1);
	$_pdf->setTopMargin(1);
	$_pdf->setRightMargin (1);
	$_pdf->setFont('courier', '', 20);

	$_img = $_pdf->Image('img/Logo.png', /*left*/2, /*top*/0.3, 5, 4.7, 'png');

	$_pdf->Cell(19,1,iconv('utf-8','iso-8859-1','POPCORN CLUB'),0,1,'C',false);
	$_pdf->Cell(19,1,'Pop Corporation',0,1,'C',false);
	$_pdf->Cell(19,1,iconv('utf-8','iso-8859-1','São Paulo'),0,1,'C',false);
	$_pdf->Ln(2);
	$_pdf->SetFillColor(255, 186, 83);
	$_pdf->Cell(19,1,iconv('utf-8','iso-8859-1',$_REQUEST['mens']),0,2,'C',TRUE);


	$_pdf->SetFillColor(255,255,255);
	$_pdf->Ln( 1 );
	$_pdf->SetFont('helvetica', '', 14);
	$_pdf->SetTextColor(0,0,128);
	$_pdf->SetFillColor(220, 220, 220);
	$_pdf->SetDrawColor(0, 0, 0);


	$_pdf->SetFont('times', '', 12);
	$_pdf->SetTextColor(0,0,0);


	$_pdf->SetFont('courier','',22);
	$_pdf->SetFillColor(169,169,169);
	$_pdf->Cell(19,1,iconv('utf-8','iso-8859-1',$PDFtable[1]),1,0,'C',true);
	$_pdf->SetFillColor(220,220,220);
	$_pdf->Ln( 1 );
	$_pdf->SetFont('helvetica','',13);

	foreach($PDFquery as $PDFrow){
		$_pdf->Cell((isset($PDFrow['Email'])?5:12),1,iconv('utf-8', 'iso-8859-1', $PDFrow['Nome']),1,0,'L',TRUE);
		if(isset($PDFrow['Nasc'])){$_pdf->Cell(2,1,iconv('utf-8', 'iso-8859-1', getAge($PDFrow['Nasc'])),1,0,'L',TRUE);}
		if(isset($PDFrow['Email'])){$_pdf->Cell(12,1,iconv('utf-8', 'iso-8859-1', $PDFrow['Email']),1,0,'L',TRUE);}
		if(isset($PDFrow['DataC'])){$_pdf->Cell(7,1,iconv('utf-8', 'iso-8859-1', getYearMouthFormat($PDFrow['DataC'])),1,0,'L',TRUE);}
		$_pdf->Ln( 1 );
	}

	$_pdf->Output();

	$_pdf->Close();
?>