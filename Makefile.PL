#!/usr/bin/perl
use 5.008005;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Math::C::XS',
    VERSION_FROM => 'lib/Math/C/XS.pm',
    PREREQ_PM => { 'Test::More' => 0 },
    ABSTRACT_FROM => 'lib/Math/C/XS.pm',
    AUTHOR => 'Stephan Wagner',
    LIBS => ['-lmath'],
    DEFINE => '',
    INC => '-I.',
    OBJECT => '$(O_FILES)',
);
