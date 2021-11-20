#!/usr/bin/bash/perl
# caspar's cooles perl script

use warnings;
use strict;
use autodie; #DIE DIE DIE, IT'S MUFFIN TIME!

my $outfile = 'output.html';

# open the output file
open my $ofh, '>>', $outfile or die "$outfile: $!";

# string to save the name of the task
my $taskName; 
my $fileName;
my $subName;

my $useImg = 0;
my $choice;
# loop over the .pde files in pdeFiles folder
while (defined(my $file = glob "pdeFiles/*")) {
  $fileName = substr($file, 8) . ".pde"; # filename (name of folder) +.pde
  
  open my $ifh, "<", "$file/$fileName";  # open taskFolder/task.pde 
 
  $taskName = substr($file, 16, 3); # cut the name of $file to the task name
  $subName = substr($file, 20);
  
  # ask for image/live block
  print "image or live code for $fileName? [i/l] >\n";
  $choice = <STDIN>;
  chomp $choice;
  if ("$choice" eq "i"){
    $useImg = 1;
  }
  elsif ("$choice" eq "l") {
    $useImg = 0;
  }

  # add top html
  print $ofh "\n <!--$taskName--> \n";
  print $ofh "<h2 class=\"green\">$taskName</h2>", "\n";
  print $ofh "<h2 class=\"purple\" >$subName</h2>", "\n";
  print $ofh '<pre class="code" style="position:relative; top:0px;">', "\n";
  print $ofh "<code class=\"processing-html\" id=\"task_$taskName\">", "\n";
  #loop over each line of the infile and copy it to the outfile
  while (<$ifh>) {
    print $ofh $_;
  }
  print $ofh "\n";
  print $ofh "</code></pre>";

  # live code
  if ($useImg == 0){
  print $ofh "<div class=\"task_pde_holder\"> \n";
  print $ofh "  <div class=\"task_pde\"> \n";
  print $ofh "    <h2 class=\"purple\">RESULT:</h2>\n";
  print $ofh "  <div class=\"task_pde\"> \n";
  print $ofh "  <canvas class=\"pde-doc\" id=\"theCanvas\" data-processing-sources=\"./pde_docs/sketches/$fileName\" style=\"image-rendering: !important;\"></canvas>\n";
  print $ofh "</div></div></div>\n";
  }
  # img block
  elsif ($useImg == 1){
  print $ofh "<div class=\"task_pde_holder\"> \n";
  print $ofh "  <div class=\"task_pde\"> \n";
  print $ofh "    <h2 class=\"purple\">RESULT:</h2>\n";
  print $ofh "  <div class=\"task_pde\"> \n";
  print $ofh "  <img class=\"pde-doc\" src=\"./pde_docs/$taskName.png\"/> \n";
  print $ofh "</div></div></div>\n";
  }
  close $ifh;
}
close $ofh;
