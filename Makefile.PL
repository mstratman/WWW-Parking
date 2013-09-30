use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'WWW-Parking';
all_from 'lib/WWW/Parking.pm';
author   q{Mark A. Stratman <stratman@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   #homepage   => 'http://yourwebsitehere.com',
   #IRC        => 'irc://irc.perl.org/#WWW-Parking',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   #repository => 'git://github.com/Mark A. Stratman/WWW-Parking.git',
   bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=WWW-Parking',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
   'Moo'            => 1,
   'LWP::UserAgent' => 0,
);

install_as_cpan;
auto_set_repository;
auto_install;
WriteAll;
