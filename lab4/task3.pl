use strict;
use warnings;
use Data::Dumper qw(Dumper);

my $inFilePath = "in3.txt";
my $textFromFile = '';
open(my $fileHandle, '<:', $inFilePath) || die("Error while opening file "); # открываем для чтения
while (my $line = <$fileHandle>) {
    $textFromFile .= $line;
}
close($fileHandle);

$\ = "\n";
my %wordLengthHash = ();

my @arWords = $textFromFile =~ m/\w+/g; # выбираем все последовательности, состоящие из подряд идущих букв
foreach my $word (@arWords) {
    my $wordLength = length($word);
    if (!defined($wordLengthHash{$wordLength})) {
        $wordLengthHash{$wordLength} = 1;
    }
    else {
        $wordLengthHash{$wordLength}++;
    }
}

print Dumper \%wordLengthHash;