[![Actions Status](https://github.com/lizmat/P5lcfirst/workflows/test/badge.svg)](https://github.com/lizmat/P5lcfirst/actions)

NAME
====

Raku port of Perl's lcfirst() / ucfirst() built-ins

SYNOPSIS
========

    use P5lcfirst;

    say lcfirst "FOOBAR"; # fOOBAR
    with "ZIPPO" {
        say lcfirst;  # zIPPO
    }

    say ucfirst "foobar"; # Foobar
    with "zippo" {
        say ucfirst;  # Zippo
    }

DESCRIPTION
===========

This module tries to mimic the behaviour of Perl's `lcfirst` and `ucfirst` built-ins as closely as possible in the Raku Programming Language.

ORIGINAL PERL 5 DOCUMENTATION
=============================

    lcfirst EXPR
    lcfirst Returns the value of EXPR with the first character lowercased.
            This is the internal function implementing the "\l" escape in
            double-quoted strings.

            If EXPR is omitted, uses $_.

            This function behaves the same way under various pragmata, such as
            in a locale, as "lc" does.

    ucfirst EXPR
    ucfirst Returns the value of EXPR with the first character in uppercase
            (titlecase in Unicode). This is the internal function implementing
            the "\u" escape in double-quoted strings.

            If EXPR is omitted, uses $_.

            This function behaves the same way under various pragma, such as
            in a locale, as "lc" does.

PORTING CAVEATS
===============

In future language versions of Raku, it will become impossible to access the `$_` variable of the caller's scope, because it will not have been marked as a dynamic variable. So please consider changing:

    lcfirst;

to either:

    lcfirst($_);

or, using the subroutine as a method syntax, with the prefix `.` shortcut to use that scope's `$_` as the invocant:

    .&lcfirst;

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

Source can be located at: https://github.com/lizmat/P5lcfirst . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2018, 2019, 2020, 2021, 2023 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

