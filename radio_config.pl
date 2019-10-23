#!/usr/bin/perl

open(INFILE,"pactl list short|grep Griffin|grep input|cut -f 1|");
$source=<INFILE>;
close INFILE;

open(INFILE,"pactl list short|grep output|grep stereo|grep -v monitor|grep -v Bl
aster|cut -f 1|");
$sink=<INFILE>;
close INFILE;

chomp $source;
chomp $sink;

system("pactl load-module module-loopback source=$source sink=$sink");
