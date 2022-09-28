# use strict;
# use warnings;

use Data::Dumper qw(Dumper);

$\ = "\n";
my $inputFile = "in1.txt";
my $inputText = "";
my $fileHandle;
my %resultHash;

open $fileHandle, '<', $inputFile || die "Error while opening file";
while (my $value = <$fileHandle>) {
    $inputText .= $value;
}
close $fileHandle;

my @arData = split "\n", $inputText;

for my $iter (0 .. $#arData) {
    my @arDataSplit = split ", ", @arData[$iter];

    foreach my $data (@arDataSplit) {
        my @arKeys = split ":", $data;
        $resultHash{$iter}{$arKeys[0]} = $arKeys[1];
    }
}

print %resultHash;
print Dumper \%resultHash;