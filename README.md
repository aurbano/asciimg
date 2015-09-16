# ascii-tty
Command line tool to display images as ascii art on the terminal

![Example](https://raw.githubusercontent.com/aurbano/ascii-tty/master/demos/demo.gif)

## Usage
```sh
$ ./ascii-tty [-c] [-r resolution] [-t threshold] [-s vertical stretching] image
```

### Options

| Option | Default | Description |
|---|---|---|
| **-c** | `false` | Use colored output, enable colors simply by adding the flag. |
| **-t** | `30` | Color sampling threshold, a higher threshold will generate less transitions between colors in the images, good for images with gradients. |
| **-r** | `width` |  The resolution is the number of columns used when printing the image. It will default to the current size of the terminal. |
| **-s** | `0.5` | Vertical stretching factor for the image, or aspect ratio. It defaults to 0.5, numbers over 0.5 will stretch the image vertically, under 0.5 they will compress it. |



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

## Roadmap
* <del>Add an option to get colored output</del>
* Add option to use full square characters/custom characters
* Package for distribution
* brew installer?
* Rewrite in an easier language (nodejs?)

## Meta
Developed by [Alejandro U. Alvarez](http://urbanoalvarez.es) - &copy; 2015

Licensed under the MIT License
