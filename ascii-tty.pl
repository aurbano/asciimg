#! /usr/bin/env perl 

use GD::Image;
use Term::ANSIColor;

$numargs = $#ARGV+1;
if($numargs < 1){
  print "Usage: ascii-ttl.pl imgsrc.png [scan resolution 0-1] [vertical ratio, default 1.53]\n";
  exit;
}

# Open image
my $imgsrc = shift;
my $im;

GD::Image->trueColor(1);
$im = GD::Image->new($imgsrc)
  or die "ascii-ttl.pl: can't find '",$imgsrc,"'\n";

# Get image size
my @size = $im->getBounds();

# Scanning resolution
my $res = shift || 0.985;
my $ratio = shift || 0.5;
$res = 1 - $res;
my $resx = $res*@size[0];
my $resy = $resx/$ratio;

# Filling chars
my @chars = (" ", ".", ",", "-", "+", "1", "b", "#", "X", "W", "W");

# Build array of average values
for(my $y=0; $y <= @size[1]; $y = $y+$resy){
  for(my $x=0; $x <= @size[0]; $x = $x+$resx){
    #Simple way of getting the average, without sampling
    my $index = $im->getPixel(int($x),int($y));
    if($index >= 1<<24){    
      # Transparent pixel
      print " ";
      next;
    }
    ($r,$g,$b) = $im->rgb($im->getPixel(int($x),int($y)));
    my $avg = ($r+$b+$g)/3;
    #print $avg," ";
    # Get the average value and normalize it to 0-1
    my $norm = 20*$avg/255;
    #print color 'yellow';
    if($norm > 10){
      print color 'bold';
      print @chars[int($norm/2)];
      print color 'reset';
    }else{
      print @chars[int($norm/2)];
    }
    print color 'reset';
  }
  print "\n";
}

# Sampling is very slow at the moment, so disabled
# The following code does area sampling, generating
# more detailed images
    
#my $avg = 0;
#my $counter = 0;
#for my $sampley (0 .. $resy){
#  for my $samplex (0 .. $resx){
#    my $pixel = $im->getPixel($x + $samplex, $y + $sampley);
#    ($r,$g,$b) = $im->rgb($pixel);
#    $avg += 255-($r+$b+$g)/3;
#    $counter++;
#  }
#}
#$avg = $avg/$counter;
