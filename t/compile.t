#!/usr/bin/perl

use Test;
BEGIN { plan tests => 4 }

use Carp;

########################################################################

use DBIx::DBO2;
BEGIN { ok( 1 ) }

eval "use DBIx::DBO2 0.001;";
ok( ! $@ );

eval "use DBIx::DBO2 2.0;";
ok( $@ );

########################################################################

eval 'use lib "t/lib"; use MyCDs;';
ok( ! $@ );

########################################################################

1;
