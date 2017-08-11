<?php

$link=mysql_connect('localhost','root','');

$a=mysql_select_db('FamilySacco');

$b = time();

echo $b = date('Y-m-d',$b)."<br>";
echo $c = date('Y-m-d',strtotime('- 1 month'))."<br>";
echo $dd= date('Y-m-d',strtotime('- 2 month'))."<br>";
echo $ee = date('Y-m-d',strtotime('- 3 month'))."<br>";
echo $ff = date('Y-m-d',strtotime('- 4 month'))."<br>";
echo $gg = date('Y-m-d',strtotime('- 5 month'))."<br>";
echo $hh = date('Y-m-d',strtotime('- 6 month'))."<br>";
//$fzz=40000;

$fy="select LoanAmount,LoanID,MemberID from LoanRequest order by LoanID DESC limit 1";
$fz=mysql_query($fy);
while ($fyy=mysql_fetch_assoc($fz)) {
	$fzz=$fyy['LoanAmount'];
	$fzzz=$fyy['MemberID'];
	$LoanID=$fyy['LoanID'];
	echo"<tr><td>".$fyy['LoanID']."</td></tr></br>";
}
     
$lp="select MemberID from Member";
$le="select count(MemberID) from Member";
$lf=mysql_query($le);
while ($lg=mysql_fetch_assoc($lf)) {
	$lh=$lg['count(MemberID)'];

	
}
$lq=mysql_query($lp);
$ld=mysql_num_rows($lq);
for ($li=0; $li < $ld; $li++) 
     {
  
 $lk=mysql_fetch_row($lq);
 $lk[0];
 
 $totalID[$li]=$lk[0];
 
 
      }
 
      $lz=0;
      while($lz<$lh)
     {	
   if($totalID[$lz]==$fzzz){
$f="select ContributionAmount,count(ContributionAmount) as times1 from MemberContributions where ContributionDate between '$c' and '$b' && MemberID='$totalID[$lz]' group by FirstName ";
$g=mysql_query($f);

while ($h=mysql_fetch_assoc($g)) {
	$j=$h['times1'];
	echo"<tr><td>".$h['times1']."</td></tr></br>";
}
if($j>=1){
$k="select ContributionAmount,count(ContributionAmount) as times2 from MemberContributions where ContributionDate between '$dd' and '$c' && MemberID='$totalID[$lz]' group by FirstName";
$l=mysql_query($k); 
 while ($m=mysql_fetch_assoc($l)) {
	$n=$m['times2'];
	echo"<tr><td>".$m['times2']."</td></tr></br>";
}

if($n>=1){
$o="select ContributionAmount,count(ContributionAmount) as times3 from MemberContributions where ContributionDate  between '$ee' and '$dd' && MemberID='$totalID[$lz]' group by FirstName";
$p=mysql_query($o); 
 while ($q=mysql_fetch_assoc($p)) {
	$r=$q['times3'];
	echo"<tr><td>".$q['times3']."</td></tr></br>";	
}
if($r>=1){
$s="select ContributionAmount,count(ContributionAmount) as times4 from MemberContributions where ContributionDate  between '$ff' and '$ee' && MemberID='$totalID[$lz]' group by FirstName";
$t=mysql_query($s); 
 while ($v=mysql_fetch_assoc($t)) {
	$u=$v['times4'];
	echo"<tr><td>".$v['times4']."</td></tr></br>";	
}
if($u>=1){
$w="select ContributionAmount,count(ContributionAmount) as times5 from MemberContributions where ContributionDate between '$gg' and '$ff' && MemberID='$totalID[$lz]' group by FirstName";
$x=mysql_query($w); 
 while ($y=mysql_fetch_assoc($x)) {
	$z=$y['times5'];
	echo"<tr><td>".$y['times5']."</td></tr></br>";	
}
if($z>=1){
$aa="select ContributionAmount,count(ContributionAmount) as times6 from MemberContributions where ContributionDate between '$hh' and '$gg' && MemberID='$totalID[$lz]' group by FirstName ";
$bb=mysql_query($aa); 
 while ($cc=mysql_fetch_assoc($bb)) {
	$dd=$cc['times6'];

	echo"<tr><td>".$cc['times6']."</td></tr></br>";	
}
if($dd>=1)
      {  
	
$jj="select sum(ContributionAmount) as Total,count(ContributionAmount)as times7 ,FirstName from MemberContributions where MemberID='$totalID[$lz]' group by FirstName";
$kk=mysql_query($jj);
	
while ($ll=mysql_fetch_assoc($kk))
     {
$mm=$ll['Total'];
	
		
      }

if($fzz<=(0.5*$mm))
{
 
 $fb= $fzz*0.03*1;
 $fc=$fb+$fzz;
 echo "$fc</br>";
 $loanRepaymet="insert into loanRepayment (RepaymentID,RepaymentAmount,Interest,LoanID,MemberID) values (null,'$fc','$fb','$LoanID','$fzzz')";
 $RepymentInsert=mysql_query($loanRepaymet);
}
//echo "hihi</br>";
}
}
}
}
}
}
else
{echo "waa</br>";
}}
$lz++;
//}
}


?>
	
