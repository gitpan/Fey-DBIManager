use strict;
use warnings;

use Test::More;

plan skip_all => 'This test is only run for the module author'
    unless -d '.hg' || $ENV{IS_MAINTAINER};

eval 'use Test::Pod::Coverage 1.04; use Pod::Coverage::Moose;';
plan skip_all => 'Test::Pod::Coverage 1.04 and Pod::Coverage::Moose required for testing POD coverage'
    if $@;
use Test::More;


my @trustme = qr/^BUILD$/;
all_pod_coverage_ok( { coverage_class => 'Pod::Coverage::Moose', trustme => \@trustme } );