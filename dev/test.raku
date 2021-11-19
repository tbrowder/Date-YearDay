#!/usr/bin/env raku

use lib <../lib>;
use Date::YearDay;

my $d = Date::YearDay.new: :year(2021), :doy(42);
say $d.Str; # output: 2021-02-11
say ($d ~~ Date);
say ($d ~~ Date::YearDay);
