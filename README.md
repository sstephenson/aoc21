This repository contains solutions to the [2021 Advent of Code][aoc]
written in the “little languages” of UNIX.

The solutions run directly from source and are intended to conform to
the [POSIX.1-2017][posix] standard.

#### Advent Harness

The repository includes a [built-in harness](bin) with scripts to fetch
advent problem input, record verified output, and stub, run, and test
each day’s solutions.

To evaluate a particular solution, run `bin/aoc solve <day> <problem>`,
where `<day>` is the advent day number and `<problem>` is `1` or `2`.

To test each solution against the recorded output, run `bin/aoc test`.

---
© 2021 Sam Stephenson

[aoc]: https://adventofcode.com/2021
[awk]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/awk.html
[posix]: https://pubs.opengroup.org/onlinepubs/9699919799/
[sh]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html
