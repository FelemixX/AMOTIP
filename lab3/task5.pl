use strict;
use warnings;

use open qw(:utf8);
binmode STDOUT, ':utf8';

my $inputFile = "in5.txt";
my $outputFile = "out5.txt";
my $inputText = "";
my $outputText = "";
my $fileHandle;

open $fileHandle, '<', $inputFile || die "Error while opening file";
while (my $line = <$fileHandle>) {
    $inputText .= $line;
}
close $fileHandle;

my @arWords = split /\s+/, $inputText;

foreach my $word (@arWords) {
    if (length $word <= 5) {
        $outputText .= "$word\n";
    }
}

print $outputText;

open $fileHandle, '>', $outputFile || die "Error while opening file";
print $fileHandle $outputText;
close $fileHandle;