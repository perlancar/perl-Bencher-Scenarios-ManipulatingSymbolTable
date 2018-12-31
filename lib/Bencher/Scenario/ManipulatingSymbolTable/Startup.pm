package Bencher::Scenario::ManipulatingSymbolTable::Startup;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup of modules',
    module_startup => 1,
    participants => [
        {module => 'Package::MoreUtil'},
        {module => 'Package::Stash'},
        {module => 'Package::Stash::PP'},
        {module => 'Package::Stash::XS'},
    ],
};

1;
# ABSTRACT:
