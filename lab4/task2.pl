use strict;
use warnings;

my $inFilePath = "in2.txt";
my $textFromFile = '';
open(my $fileHandle, '<:encoding(UTF-8)', $inFilePath) || die("Error while opening file");
while (my $line = <$fileHandle>) {
    $textFromFile .= $line;
}
close($fileHandle);

$\ = "\n";
my %wordsHash = ();

my @arWords = $textFromFile =~ m/\w+/g; # выбираем все последовательности, состоящие из подряд идущих букв
foreach my $word (@arWords) {
    my $firstLetter = lc(substr($word, 0, 1));
    if (!defined($wordsHash{$firstLetter})) {
        $wordsHash{$firstLetter} = $word;
    }
    else {
        $wordsHash{$firstLetter} .= " $word";
    }
}

my @hashKeys = sort(keys(%wordsHash));
foreach my $key (@hashKeys) {
    print ("'$key' => '$wordsHash{$key}'");
}