# !/usr/bin/perl
# fib.pl - Recursive Fibonacci Sequence
# Author: Patrick Lindsay

print("RECURSIVE FIBONACCI CALCULATOR\n\n");
print("Where would you like me to stop?\n");

my $max = <STDIN>;
chomp $max;

$result = fib($max);

print("$result is the last number in the Fibonacci Sequence that is less than or equal to $max.\n");

sub fib{
	my $max  = @_[0];
	my $num1 = @_[1];
	my $num2 = @_[2];
	my $result;
	
	# Handles the call to the function.
	unless($num1 && $num2){
		$num1 = 1;
		$num2 = 1;
	}

	my $temp = $num1 + $num2;

	# Checks to see if we’ve hit $max yet.
	if($temp<=$max){
		$result = fib($max, $num2, $temp);
	}else{
		$result = $num2;
	}

	return $result;
}