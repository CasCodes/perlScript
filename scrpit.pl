#!/usr/bin/bash/perl
# caspar's cooles perl script

use warnings;
use strict;
use autodie; #DIE DIE DIE, IT'S MUFFIN TIME!

my $outfile = 'output.html';

# open the output file
open my $ofh, '>>', $outfile or die "$outfile: $!";

# loop over the .pde files 
while (defined(my $file = glob 'pdeFiles/*.pde')) {
  open my $ifh, "<", $file;  # open infile
  # add top html
  print $ofh "\n <!--new code-->";
  print $ofh '<pre class="code" style="position:relative; top:0px;">';
  print $ofh "\n";
  print $ofh '<code class="processing-html" id="$input">';
  #loop over each line of the infile and copy it to the outfile
  while (<$ifh>) {
    print $ofh $_;
  }
  print $ofh "\n";
  print $ofh '</code></pre>';

  close $ifh;
}
close $ofh;
