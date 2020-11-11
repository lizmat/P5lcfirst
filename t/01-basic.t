use v6.*;
use Test;
use P5lcfirst;

plan 4;

ok defined(::('&lcfirst')),           'is &lcfirst imported?';
ok !defined(P5lcfirst::{'&lcfirst'}), 'is &lcfirst externally NOT accessible?';
ok defined(::('&ucfirst')),           'is &ucfirst imported?';
ok !defined(P5lcfirst::{'&ucfirst'}), 'is &ucfirst externally NOT accessible?';

# vim: expandtab shiftwidth=4
