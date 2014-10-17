#!/usr/bin/perl
use 5.008005;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Math::XS',
    VERSION_FROM => 'lib/Math/XS.pm',
    PREREQ_PM => { 'Test::More' => 0 },
    ABSTRACT_FROM => 'lib/Math/XS.pm',
    AUTHOR => 'Stephan Wagner',
    LIBS => ['-lmath'],
    DEFINE => '',
    INC => '-I.',
    OBJECT => '$(O_FILES)',
);
