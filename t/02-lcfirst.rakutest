use v6.*;
use Test;
use P5lcfirst;

plan 8;

is lcfirst('FOO'), 'fOO', 'did we get a good fOO';
is lcfirst('foo'), 'foo', 'did we get a good foo';
is lcfirst('F'),   'f',   'did we get a good f';
is lcfirst(''),    '',    'did we get a good empty string';

with "BAR" { is .&lcfirst, 'bAR', 'did we get a good bAR' }
with "bar" { is .&lcfirst, 'bar', 'did we get a good bar' }
with "B"   { is .&lcfirst, 'b',   'did we get a good b' }
with ""    { is .&lcfirst, '',    'did we get a good empty string' }

# vim: expandtab shiftwidth=4
