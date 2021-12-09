This repository contains solutions to the [2021 Advent of Code][aoc]
written in the “little languages” of UNIX.

The solutions run directly from source and are intended to conform to
the [POSIX.1-2017][posix] standard.

#### Languages Used

* [sh] - shell, the standard command language interpreter
* [awk] - pattern scanning and processing language
* [bc] - arbitrary-precision arithmetic language
* [sed] - stream editor

#### Solutions

<table>
  <tr>
    <td><a href="src/01">Day 1</a></td>
    <td><a href="src/02">Day 2</a></td>
    <td><a href="src/03">Day 3</a></td>
    <td><a href="src/04">Day 4</a></td>
    <td><a href="src/05">Day 5</a></td>
  </tr>
  <tr>
    <td><a href="src/06">Day 6</a></td>
    <td><a href="src/07">Day 7</a></td>
    <td><a href="src/08">Day 8</a></td>
    <td><a href="src/09">Day 9</a></td>
    <td>Day 10</td>
  </tr>
  <tr>
    <td>Day 11</td>
    <td>Day 12</td>
    <td>Day 13</td>
    <td>Day 14</td>
    <td>Day 15</td>
  </tr>
  <tr>
    <td>Day 16</td>
    <td>Day 17</td>
    <td>Day 18</td>
    <td>Day 19</td>
    <td>Day 20</td>
  </tr>
  <tr>
    <td>Day 21</td>
    <td>Day 22</td>
    <td>Day 23</td>
    <td>Day 24</td>
    <td>Day 25</td>
  </tr>
</table>

#### Structure

Each solution consists of a main executable file named `solve`, and
optionally additional source files, in a subdirectory of `src/`
corresponding to the day and problem. The `solve` program makes the
following assumptions about its environment:

* The `TMPDIR` environment variable will be set to the path of a writable
  temporary directory.
* The current working directory will be set to the parent directory of the
  `solve` program.
* The program will read the day’s input from stdin.
* The program will write its solution to stdout and exit with a status of
  zero.

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
[bc]: https://pubs.opengroup.org/onlinepubs/9699919799/
[posix]: https://pubs.opengroup.org/onlinepubs/9699919799/
[sed]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sed.html
[sh]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html
