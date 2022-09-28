use warnings;
use strict;
use open qw(:utf8);

binmode(STDOUT,':utf8');

my $inputFile = "in1.txt";
my $outputFile = "out7.txt";
my $textFromFile = '';
open(my $fileHandle, '<', $inputFile) or die("Error while opening file $inputFile: $!\n"); # открываем для чтения
while (my $line = <$fileHandle>) {
    $textFromFile .= $line;
}
close($fileHandle);

my @words = $textFromFile =~ m/\w+/g;

my $counter = 1;
my $numberedWords = "";

for my $word (@words) {
    $numberedWords .= $counter++ . ". $word\n";
}

open($fileHandle, '>', $outputFile) or die("Error while opening file $outputFile: $!\n"); # открываем для записи
print($fileHandle $numberedWords);
close($fileHandle);
