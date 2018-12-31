package Bencher::Scenario::ManipulatingSymbolTable::CheckingSymbolExists;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark checking symbol exists',
    participants => [
        {name => 'PS:XS not exists', module => 'Package::Stash::XS', code_template => 'Package::Stash::XS->new("main")->has_symbol(q[$should_not_exist])'},
        {name => 'PS:PP not exists', module => 'Package::Stash::PP', code_template => 'Package::Stash::PP->new("main")->has_symbol(q[$should_not_exist])'},
        {name => 'PS:XS exists'    , module => 'Package::Stash::XS', code_template => 'Package::Stash::XS->new("main")->has_symbol(q[$should_exist])'},
        {name => 'PS:PP exists'    , module => 'Package::Stash::PP', code_template => 'Package::Stash::PP->new("main")->has_symbol(q[$should_exist])'},
    ],
};

package
    main;
our $should_exist = 0;

1;
# ABSTRACT:
