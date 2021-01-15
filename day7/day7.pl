#!/usr/bin/perl
# use strict;
# use warnings;
# Note to self... probably shouldn't comment these out .__.

use Path::Tiny;
use autodie;

my $dir = path(".");
my $file = $dir->child("day7/day7.txt");
my $file_handle = $file->openr_utf8();

# A dictionary containing_bag:inside_bags
my %bags;
my @inside_bags_raw = ();
my @inside_bags = ();
while( my $line = $file_handle->getline() ) {
  $line =~ s/bags/bag/g;
  $line =~ s/\.//;
  $line =~ s/\n//;
  
  # Split into containing bag and inside bags
  my @rules = split /contain/, $line;
  $rules[0] =~ s/^\s+|\s+$//g;
  $rules[1] =~ s/^\s+|\s+$//g;
  @inside_bags_raw = ();
  @inside_bags = ();
  if ($rules[1] ne 'no other bag') {
    @inside_bags_raw = split /,/, $rules[1];
    for my $inside_bag (@inside_bags_raw) {
      $inside_bag =~ s/^\s+|\s+$//g;  # Strip spaces
      my ($quantity, $adj, $color, $just_bag) = split / /, $inside_bag;
      my $clean_bag = join(" ", $adj, $color, $just_bag);
      my @quant_bag = ($clean_bag, $quantity);
      push(@inside_bags, \@quant_bag)
    }
  }
  # Add to dictionary, be careful of just copying the reference
  my @temp = @inside_bags;
  $bags{$rules[0]} = \@temp;
}

# How man bags can contain a gold bag?
my $done = 0;
my $total = 1;
my %containing = ('shiny gold bag' => 1);
while (!$done) {
  keys %bags; # Important to reset after the previous each
  while(my($k, $v) = each %bags) {
    if (!exists($containing{$k})) {
      for $b (@$v) {
        if (exists($containing{@$b[0]})) {
          $containing{$k} = 1;
        }
      }
    }
  }
  if (keys %containing == $total) {
    $done = 1;
  } else {
    $total = keys %containing;
  }
}

# Part 1
print $total - 1, "\n";

# Recursively find the total value of a tree
# Args: List of node names + values
# Return int, total value of node
sub tot {
  my $leaves = @_[0]; # leaves is a reference... IMPORTANT
  if (scalar @$leaves == 0) {
    return 0;
  }
  my $s = 0;
  for $l (@$leaves) {
    $s += $$l[1] + $$l[1]*tot($bags{$$l[0]});
  }
  return $s;
}

print tot([['shiny gold bag', 1]])-1, "\n";
