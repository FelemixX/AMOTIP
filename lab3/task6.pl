use strict;
use warnings;

use open qw(:utf8);
binmode STDOUT, ':utf8';

$\ = "\n";
my $inputFile = "in1.txt";
my $inputText = "";
my $fileHandle;

open $fileHandle, '<', $inputFile || die "Error while opening file";
while (my $line = <$fileHandle>) {
    $inputText .= $line;
}

close $fileHandle;

my @arLetters = split //, $inputText;

my $lines = 0;
my $words = 0;
my $chars = 0;
my $isWorldEnd = 0;

foreach my $letter (@arLetters) {
    $chars++;

    if ($letter eq "\n") {
        $lines++;
    }

    if ($letter =~ m/\s/) {
        if ($isWorldEnd != 0) {
            $words++
        }
        $isWorldEnd = 0;
    }
    else {
        $isWorldEnd = 1;
    }
}

print "Input file contains:\n${chars} letters \n${words} words \n${lines} lines ";