# use strict;
# use warnings;

$" = "\n";
my $inputFile = "in3.txt";
my $inputText = "";
my $fileHandle;

open $fileHandle, '<', $inputFile || die "Error while opening file";
while (my $line = <$fileHandle>) {
    $inputText .= $line;
}
close $fileHandle;

my @paragraphs = split /\n\s/, $inputText; #\n\s символ переноса каретки на новую строку, \s строковые литералы
my @arResult;

for my $iteration (2 .. $#paragraphs) {
    if ($iteration % 2 == 0) {
        push(@arResult, (@paragraphs[$iteration]));
    }
}

print "@arResult";