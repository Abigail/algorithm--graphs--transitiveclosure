#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use ExtUtils::MakeMaker;

my %args = (
    NAME                 => 'Algorithm::Graphs::TransitiveClosure',
    VERSION_FROM         => 'lib/Algorithm/Graphs/TransitiveClosure.pm',
    ABSTRACT_FROM        => 'lib/Algorithm/Graphs/TransitiveClosure.pm',
    PREREQ_PM            => { },
    MIN_PERL_VERSION     =>  5.006,
    AUTHOR               =>
                'Abigail <algorithm-graphs-transitiveclosure@abigail.be>',
    LICENSE              => 'mit',
    META_MERGE           => {
        build_requires   => {'Test::More' => 0},
        resources        => {
            repository   =>
            'git://github.com/Abigail/algorithm--graphs--transitiveclosure.git',
        },
        keywords         => [qw [Algorithm Graphs], 'Transitive Closure',
                             'Floyd Warshall'],
    },
);

my %filter = (
    MIN_PERL_VERSION     => '6.48',
    META_MERGE           => '6.46',
    AUTHOR               => '6.07',
    ABSTRACT_FROM        => '6.07',
    LICENSE              => '6.07',
);

delete $args {$_} for grep {defined $filter {$_} &&
                            $ExtUtils::MakeMaker::VERSION lt $filter {$_}}
                            keys %args;


WriteMakefile %args;

__END__
