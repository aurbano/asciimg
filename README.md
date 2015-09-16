# asciimg
> /as-keem-ɪdʒ/ or "askimage"
>
> Command line tool to display images as ascii art on the terminal

![Example](https://raw.githubusercontent.com/aurbano/ascii-tty/master/demos/demo.gif)

## Usage
```bash
$ ./asciimg [-c] [-i] [-a] [-s] [-r resolution] [-t threshold] [-s vertical stretching] [image]...
```

### Examples

```bash
$ asciimg -c image.png # print image.png in color
$ asciimg -c *.png # print all png files in color
$ echo demos/* | asciimg # print all files in the demos folder in black and white
```

### Options

| Option | Default | Description |
|---|---|---|
| **-s** | `false` |  Render image using only the space character, depending on **-c** and **-i** this will produce different results. Worth testing. |
| **-i** | `false` |  Set the color in the background instead of the foreground, good for images that have a white background or bright colors. |
| **-a** | `false` |  Enable averaging for the image sampling algorithm. Averaging should produce closer representations of the input image, but will slow down the process. |
| **-c** | `false` | Use colored output, enable colors simply by adding the flag. |
| **-t** | `30` | Color sampling threshold, a higher threshold will generate less transitions between colors in the images, good for images with gradients. |
| **-r** | `width` |  The resolution is the number of columns used when printing the image. It will default to the current size of the terminal. |
| **-s** | `0.5` | Vertical stretching factor for the image, or aspect ratio. It defaults to 0.5, numbers over 0.5 will stretch the image vertically, under 0.5 they will compress it. |


## Installation
1. [Download](https://github.com/aurbano/asciimg/archive/master.zip)/Clone repository
2. `asciimg` is built with Perl at the moment, so you'll need to [install it](http://learn.perl.org/installing/) if your OS doesn't have it already.
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
cpan> install Term::ANSIColor
cpan> install Term::ReadKey
cpan> install Pod::Usage
cpan> install Getopt::Long
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
