# ascii-tty
Command line tool to display images as ascii art on the terminal

![Example](https://raw.githubusercontent.com/aurbano/ascii-tty/master/demos/demo.gif)

## Usage
```sh
$ ./ascii-ttl path/to/img.png [resolution 0-1] [vertical stretching]
```

## Installation
1. [Download](https://github.com/aurbano/ascii-tty/archive/master.zip)/Clone repository
2. `ascii-tty` is built with Perl at the moment, so you'll need to [install it](http://learn.perl.org/installing/) if your OS doesn't have it already.
3. Dependencies:

GD Library
```bash
# Mac OSX
$ brew install gd
# Linux (Ubuntu and similar)
$ sudo apt-get install libgd-gd2-perl
# Linux (Fedora, Red Hat...)
$ sudo yum -y install perl-GD
```
Windows: http://gnuwin32.sourceforge.net/packages/gd.htm

Configure cpan if necessary:
```bash
$ sudo perl -MCPAN -e shell
```
Perl modules:

#### Linux
```bash
$ sudo cpan
cpan> install GD::Image
# ... installing
cpan> install Term::ANSIColor
```
#### Mac OSX
Install GD from here: http://wangqinhu.com/install-gd-on-mavericks/
Then install `Term::ANSIColor` the same way as Linux.

Ready!

## Meta
Developed by [Alejandro U. Alvarez](http://urbanoalvarez.es) - &copy; 2015

Licensed under the MIT License
