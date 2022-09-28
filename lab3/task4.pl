use strict;
use warnings;

$\ = "\n";
my $inputFile = "in4.txt";
my $outputFile = "out4.txt";
my $inputText = "";
my $outputText = "";
my $fileHandle;

open $fileHandle, '<', $inputFile || die "Error while opening file";
while (my $str = <$fileHandle>)
{
    $inputText .= $str;
}
close $fileHandle;

my @numberStrings = split /\n/, $inputText;

foreach my $str (@numberStrings)
{
    my $sum = 0;
    my @numbers = split /\s+/, $str;
    foreach my $number (@numbers)
    {
        $sum += $number;
    }
    $outputText .= "$sum\n";
}

open $fileHandle, '>', $outputFile || die "Error while opening file";
print $fileHandle $outputText;
close $fileHandle;