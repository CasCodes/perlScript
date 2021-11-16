#!/usr/bin/bash/perl

# caspar's cooles perl script

use warnings;
use strict;

use autodie; #DIE DIE DIE, IT'S MUFFIN TIME!

my $infile = 'input.pde';
my $outfile = 'output.html';

print "enter name of the task (e.g 6_1_a): \n";
my $input = <>;

open my $ifh, '<', $infile  or die "$infile: $!"; #open & read infile:
open my $ofh, '>>', $outfile or die "$outfile: $!"; #open & write infile to outfile

print $ofh "\n<!--$input-->\n";
print $ofh '<pre class="code" style="position:relative; top:0px;">';
print $ofh "\n";
print $ofh '<code class="processing-html" id="$input">';
print $ofh "\n";
while (<$ifh>) {
    print $ofh $_;
}
print $ofh "\n";
print $ofh '</code></pre>';
close $ifh;
close $ofh;

# TODO
# make up a signal like !NEW to allow all pde in one file. -> Loop over the text and append after signal
