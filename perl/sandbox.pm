#!/usr/bin/perl

print("Please enter your name...\n");
$name = <STDIN>;
chomp $name;
print("Hi, $name!\n");
print(__FILE__.":".__LINE__."\n");
