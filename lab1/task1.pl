$x = 2.5;
$y = 3;
print ($x + 2 * $y); # 8.5,  потому что не указали тип и переменная стала double 
print ("\n");
print (7 / $y); # 2.3, по той же причине 
print ("\n");
print int (7 / $y); #2, потому что приводим к целочисленному типу данных и все что после точки не выводится
print ("\n");
print (7 % $y); #1, остаток от деления
print ("\n");
print (7.5 % $y); # 1, целочисленный остаток от деления 
print ("\n");
print (7.5 % $x); #1, то же самое
print ("\n");

print ("\n"); print("\n");
print ("///////////////////////////////////////////");
print ("\n"); print("\n");

print ("Invest only $1 and become millionaire!");
print ("\n"); 
print ('Invest only $1 and become millionaire!');
#Если не включить расширенный вывод ошибок, то выведет вместо $1 пустоту, потому что у нас не инициализирована эта переменная в обоих случаях

print ("\n"); print("\n");
print ("///////////////////////////////////////////");
print ("\n"); print("\n");

$hours=3;
$minutes=14;
print("Total time ${hours}h ${minutes}m"); #произойдет конкатенация переменных со строкой

print ("\n"); print("\n");
print ("///////////////////////////////////////////");
print ("\n"); print("\n");
use warnings;
$s = "3";
$n = 2;
$res1 = $s + $n;
$res2 = $s . $n;
$res3 = $s x $n;
$res4 = $n x $s;
print "\n$res1, $res2, $res3, $res4,\t"; #5, 32, 33, 222
# при сложении числа со строкой - строка приводится к численному типу
# При конкатенации - число к строке
# Попторяем все написанное раньше

print $res1, $res2, $res3, $res4, $res5; #53233222 обычный вывод
$, = " "; # Теперь после каждой выведенной переменной у нас будет запятая
$\ = "\n"; # Теперь к конце принта будет перенос каретки на новую строку
print $res1, $res2, $res3, $res4, $res5; #5 32 33 222
# т.к. добавили разделитель между параметрами и в конце вывода print вставляются пробелы и символы новой строки соответственно
print $res1, $res2, $res3, $res4, $res5; #5 32 33 222
print "==================================="; #=================================== и в конце символ новой строки
$n = "2";
$m = "0.1";
$res1 = $s + $n; # 5 , строки привелись к числам
$res2 = $s . $n; # 32 - конкатенация
$res3 = $s x $n; # 33 - дважды вывели тройку
$res4 = $s x "3n"; # 333 - три раза вывели число 3
$res5 = $s x $m; # ничего - ноль раз вывели тройку, потому что 0.1 привелось к целому числу (и потому что по закону здравого смысла нельзя вывести что-то неполное количество раз)
$res6 = $s + $m; # 3.1 - привели к числам и сложили
print $res1,$res2, $res3, $res4, $res5, $res6;

print ("\n"); print("\n");
print ("///////////////////////////////////////////");
print ("\n"); print("\n");

$a = "acb";
$b = "ab3";

print "Value of \$a = $a and value of \$b = $b\n";

if ($a lt $b) {
	print "$a lt \$b is true\n";
} else {
	print "\$a lt \$b is not true\n";
}

if ($a gt $b) {
	print "\$a gt \$b is true\n"
} else {
	print "\$a gt \$b is not true\n";
}

if ($a le $b) {
	print "\$a le \$b is true\n";
} else {
	print "\$a le \$b is not true\n";
}

if ($a ge $b) {
	print "\$a ge \$b is true\n";
} else {
	print "$\a ge \$b is not true\n";
}

if ($a ne $b) {
	print "\$a ge \$b is true\n";
} else {
	print "\$a ne \$b is not true\n"
}

$c = $a cmp $b;
print "\$a cmp \$b return $c\n";
