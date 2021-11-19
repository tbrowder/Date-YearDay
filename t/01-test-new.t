use Test;
use Date::YearDay;

plan 8;

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
isa-ok $d, Date::YearDay;
isa-ok $d, Date;
is $d, $D;

$d = Date::YearDay.new: :$year, :day-of-year($DOY);
isa-ok $d, Date::YearDay;
isa-ok $d, Date;
is $d, $D;
