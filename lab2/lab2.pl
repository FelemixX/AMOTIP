print("\n");print("\n");
print("1 task"); 
print("\n");print("\n");

$stringValue = "1. Первое предложение
2. Второе предложение
3. Третье предложение
4. Четвертое предложение
";
$" = '%';
print ($stringValue); print("\n");

@arValue = $stringValue =~ /(\d+)/g; #совпадения по паттерну "1 или более ЧИСЕЛ"  =~ совпадения по регулярке

print "@arValue\n"; 

undef $stringValue, @arValue;

print("\n");print("\n");
print("2 task");
print("\n");print("\n");

$stringValue = "12+22+31+44+87+7";
@arValue = $stringValue =~ /(\d+)/g;

foreach $value (@arValue)
	$valueSum += $value;
}
print ($valueSum); print("\n");

undef $stringValue, @arValue, $valueSum;

print("\n");print("\n");
print("3 task");
print("\n");print("\n");

my $str = "5+10:5-3";

my @additionParts = split ("\\+", $str); # разделяем на части со слагаемыми
my $additionResult = 0;
foreach my $additionPart (@additionParts) { # проходимся по всем слагаемым
    my $tmpAdditionPart = $additionPart;
    if (index($additionPart, ':') != -1) { # если в слагаемом есть знак деления
        my @divisionParts = split (":", $tmpAdditionPart); # разделяем по знаку деления
        $tmpAdditionPart = $divisionParts[0]; # в качестве первого делимого берём самое левое в строке число (самое первое в массиве после разделения)
        my $maxDivisionPartIndex = $#divisionParts; # индекс последнего элемента в массиве
        foreach my $divisionPart (@divisionParts[1..$maxDivisionPartIndex]) { # по всем элементам кроме нулевого
            $tmpAdditionPart /= $divisionPart; # делим уже имеющийся результат на следующий элемент массива элементов для деления
        }
    }
    $additionResult += $tmpAdditionPart; # добавляем слагаемое к общему результату
}

print($additionResult); print("\n");
undef $str, @additionParts, $additionPart, $tmpAdditionPart, @divisionParts, $tmpAdditionPart, $maxDivisionPartIndex, $#divisionParts, $divisionParts;

print("\n");print("\n");
print("4 task");
print("\n");print("\n");

$stringValue = "Wow every words is on new line";

print(join ("\n", split(' ', $stringValue)));

undef $stringValue;

print("\n");print("\n");
print("5 task");
print("\n");print("\n");

$stringValue = "Wowsomuchdashesthere";

print(join ("_", split('', $stringValue)));

print("\n");
