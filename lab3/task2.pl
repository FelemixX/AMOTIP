use strict;
use warnings;

$\ = "\n";
my $outputFile = "out2.txt";
my $outputText = "";
my $fileHandle;

foreach my $firstNum (1 .. 9) {
    foreach my $secondNum (1 .. 9) {
        $outputText .= ($firstNum * $secondNum) . "\t\t";
    }
    $outputText .= "\n";
}

open $fileHandle, '>', $outputFile || die "Error while opening file";
print $fileHandle $outputText;
close $fileHandle;