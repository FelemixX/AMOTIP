use warnings;
use strict;

use open qw(:utf8);
binmode STDOUT, ':utf8';

$\ = "\n";
my $inputFile = "in1.txt";
my $outputFile = "out1.txt";
my $inputText = "";
my $outputText = "";
my $fileHandle;
my $flagLetter = chr(1074);

open $fileHandle, '<', $inputFile || die "Error While opening file"; #чтение inputFile в поток
while (my $line = <$fileHandle>) {                                   #проходим по каждой строке
    $inputText .= $line;
}
close $fileHandle;

my @words = split /\s/, $inputText;

foreach my $word (@words) {
    my $firstLetter = substr $word, -1, 1;
    if ($firstLetter eq $flagLetter) {
        $outputText .= $word . "\n";
    }
}

open $fileHandle, '>', $outputFile || die "Error While opening file"; #запись потока в outputFile
print $fileHandle $outputText;
close $fileHandle;