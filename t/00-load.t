#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'Test::Meta::MyWay' );
}

diag( "Testing Test::Meta::MyWay $Test::Meta::MyWay::VERSION, Perl $], $^X" );
done_testing();
