[![Actions Status](https://github.com/tbrowder/Date-YearDay/workflows/test/badge.svg)](https://github.com/tbrowder/Date-YearDay/actions)

NAME
====

Date::YearDay - Provides creation of a Raku Date object by year and day-of-year

SYNOPSIS
========

```raku
use Date::YearDay;
my ($year, $day-of-year) = 2021, 42;
my $d  = Date::YearDay.new: :$year, :$day-of-year;
say $d ~~ Date; # OUTPUT: «True␤»

# alternatively:
my $d2 = Date::YearDay.new: :$year, :doy($day-of-year);
say $d2.Str; # OUTPUT: «2021-02-11␤»
```

DESCRIPTION
===========

Class **Date::YearDay** is child class of a Raku *Date* object whose purpose is to provide *Date* instantiation by entering a year and day-of-year. As a child of the *Date* class it inherits all the *Date* class' methods without further action by the user.

AUTHOR
======

Tom Browder <tbrowder@cpan.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2021 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

