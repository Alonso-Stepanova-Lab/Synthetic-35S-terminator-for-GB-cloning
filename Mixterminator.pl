open (OUT,">random35S.txt");
use List::Util qw(shuffle);
$contador=0;
@data1 = ("a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","g","g","g","g","g","g","g","g","g","g",
         "g","g","g","g","g","g","g","g","g","g","g","g","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t");
@data2 = ("a","a","a","a","a","t","t","t","t","t","c","c","c");
@data3 = ("a","a","a","a","a","a","a","a","a","a","a","a","t","t","t","t","t","t","t","t","c","c","c","c","c","c","c","g");

for ($i=1;$i<5000000;$i++){
@cards1 = shuffle @data1;
@cards2 = shuffle @data2;
@cards3 = shuffle @data3;
 $string1=join("",@cards1);
  $string2=join("",@cards2);
   $string3=join("",@cards3);
   $string="$string1$string2$string3";
    $test=0;
    
    
        if ($string=~m/cgtctc/) {$test=1}
        if ($string=~m/gagacg/) {$test=1}
        if ($string=~m/ggtctc/) {$test=1}
        if ($string=~m/gagacc/) {$test=1}
        if ($string=~m/gcgatg/) {$test=1}
        
        if ($string=~m/catcgc/) {$test=1}
        if ($string=~m/gaagac/) {$test=1}
        if ($string=~m/gtcttc/) {$test=1}
        if ($string=~m/cg/) {$test=1}
        if ($string=~m/c[a,c,g,t]g/) {$test=1}

    if ($test==0){$contador++;$firstpart=substr($string,0,120); $secondpart=substr($string,121,13); $thirdpart=substr($string,133,28); print OUT">35STerm$contador\n"; print OUT"$string1"; print OUT"TTAGTATGTATTTGTATTTGTA"; print OUT"$string2"; print OUT"AATAAA"; print OUT"$string3\n"}

}
