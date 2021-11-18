unit class Date::YearDay:ver<0.0.1>:auth<cpan:TBROWDER> is Date is export;

multi method new(:$year!, :$day-of-year!, |c) {
    # Convert the input values to a Date object. Following code thanks
    # to @lizmat on IRC #raku, 2021-11-18, 06:08
    # (and on IRC #raku, 2021-03-29, 11:50)
    self.Date::new($year - 1, 12,31) + $day-of-year
}

# an alternative:
multi method new(:$year!, :$doy!, |c) {
    self.Date::new($year - 1, 12,31) + $doy
}

=begin comment
# This is the sub suggested by @lizmat:
sub yearday($year, $day) {
     Date.new($year - 1, 12,31) + $day
}
=end comment
