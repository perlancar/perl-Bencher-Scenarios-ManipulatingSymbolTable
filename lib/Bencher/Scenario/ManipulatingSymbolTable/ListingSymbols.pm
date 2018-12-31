package Bencher::Scenario::ManipulatingSymbolTable::ListingSymbols;

# DATE
# VERSION

use strict;

our $scenario = {
    summary => 'Benchmark listing symbols of a package',
    participants => [
        {name => 'PS:XS::list_all_symbols'  , module => 'Package::Stash::XS', code_template => 'Package::Stash::XS->new("strict")->list_all_symbols', result_is_list=>1},
        {name => 'PS:PP::list_all_symbols'  , module => 'Package::Stash::PP', code_template => 'Package::Stash::PP->new("strict")->list_all_symbols', result_is_list=>1},
        {name => 'PS:XS::get_all_symbols'   , module => 'Package::Stash::XS', code_template => 'Package::Stash::XS->new("strict")->get_all_symbols'},
        {name => 'PS:PP::get_all_symbols'   , module => 'Package::Stash::PP', code_template => 'Package::Stash::PP->new("strict")->get_all_symbols'},
        {fcall_template => 'Package::MoreUtil::list_package_contents("strict")', result_is_list=>1},
    ],
};

1;
# ABSTRACT:
