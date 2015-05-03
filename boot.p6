#!/bin/perl6
use v6;
use strict;

my $reader = open "/usr/share/arch/archIsTheBest.md";
my $num = 69.rand.Int;
my $lineC = 0;
my $index = 0;

for $reader.lines {
	next unless ++$lineC >= 11;
	if / \= \= \= \= \= \= \= \= \= \= \= \= \= \= \= \= / {
		last if $index == $num;
		$index++;
		next;
	}
	if $index == $num {
		.say;
		next;
	}
}
