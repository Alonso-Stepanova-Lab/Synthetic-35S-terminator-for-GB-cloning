open (OUT,">random35STerminatorControl.txt");
use List::Util qw(shuffle);
$contador=0;
@data1 = ("a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","a","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","c","g","g","g","g","g","g","g","g","g","g",
         "g","g","g","g","g","g","g","g","g","g","g","g","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","t","a","a","a","a","a","t","t","t","t","t","c","c","c","a","a","a","a","a","a","a","a","a","a","a","a","t","t","t","t","t","t","t","t","c","c","c","c","c","c","c","g","t","t","a","g","t","a","t","g","t","a","t","t","t","g","t","a","t","t","t","g","t","a","a","a","t","a","a","a");

for ($i=1;$i<500000000;$i++){
@cards1 = shuffle @data1;
#@cards2 = shuffle @data2;
#@cards3 = shuffle @data3;
#@cards4 = shuffle @data4;
#@cards5 = shuffle @data5;
 $string1=join("",@cards1);
#  $string2=join("",@cards2);
#   $string3=join("",@cards3);
#   $string4=join("",@cards4);
#   $string5=join("",@cards5);
   
   $string=$string1;
    $test=0;
    
    
        if ($string=~m/cgtctc/) {$test=1}
        if ($string=~m/gagacg/) {$test=1}
        if ($string=~m/ggtctc/) {$test=1}
        if ($string=~m/gagacc/) {$test=1}
        if ($string=~m/gcgatg/) {$test=1}
        if ($string=~m/aataaa/) {$test=1}
        if ($string=~m/ttagtatgtatttgtatttgta/) {$test=1}
        
        if ($string=~m/catcgc/) {$test=1}
        if ($string=~m/gaagac/) {$test=1}
        if ($string=~m/gtcttc/) {$test=1}
        if ($string=~m/cg/) {$test=1}
        if ($string=~m/c[a,c,g,t]g/) {$test=1}

    if ($test==0){$contador++;$firstpart=substr($string,0,120); $secondpart=substr($string,121,13); $thirdpart=substr($string,133,28); print OUT">35STerm$contador\n"; print OUT"$string1\n"}

}
