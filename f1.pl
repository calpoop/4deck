($ns,$nd,$nc,$nh)=(0,0,0,0);
while (<>)
{
  chomp;
  next if (/---/); 
  @w=split / /,$_;
#  print "$w[0] $w[2]";

  if ($w[0] =~/S/) {
 	if ($ns <1) {
		$w[0]='Spade: ' ;
	        $ns++;
        } else {
	$w[0]='';	
	}
  }	

  if ($w[0] =~/D/) {
        if ($nd <1) {
                $w[0]='Diamond: ' ;
                $nd++;
        } else {
        $w[0]='';
        }
  }

   if ($w[0] =~/C/) {                                                                                                        if ($nc <1) {                                                                                                               $w[0]='Club: ' ;                                                                                                   $nc++;                                                                                                      } else {                                                                                                            $w[0]='';                                                                                                           }
  }

  if ($w[0] =~/H/) {                                                                                                        if ($nh <1) {                                                                                                               $w[0]='Heart: ' ;                                                                                                   $nh++;                                                                                                      } else {                                                                                                            $w[0]='';                                                                                                           }
  }
  
  $w[0]="Joker" if $w[0] =~/U/; 

  if ($w[0] =~/Spade/|| $w[0] =~/Heart/ || $w[0] =~/Club/ || $w[0] =~/Diamond/ ||$w[0]=~/Joker/)
	{print "\n";
  } 
  print "$w[0] $w[2]";

}
print "\n"
