#!perl

use Test::More tests => 3;

BEGIN {
    use_ok( 'DSC::grapher' ) || print "Bail out!\n";
    use_ok( 'DSC::extractor' ) || print "Bail out!\n";
    use_ok( 'DSC::putfile' ) || print "Bail out!\n";
}

diag( "Testing DSC::grapher $DSC::grapher::VERSION, Perl $], $^X" );
