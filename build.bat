@echo off

perl Makefile.PL
dmake
dmake test
dmake install
