use Test;
use Date::YearDay;

plan 4;

my $d;
my ($year, $doy) = 2121, 42;

lives-ok {
    $d = Date::YearDay.new: :$year, :day-of-year($doy);
}

lives-ok {
    $d = Date::YearDay.new: :$year, :$doy;
}

# Make sure the calculations are correct:
my $D = Date.new(:$year, :month(3), :day(23));
my $DOY = $D.day-of-year;

$d = Date::YearDay.new: :$year, :doy($DOY);
is $d, $D;

$d = Date::YearDay.new: :$year, :day-of-year($DOY);
is $d, $D;
