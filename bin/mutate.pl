#!/usr/bin/env perl
use local::lib 'local/lib';

foreach (@ARGV) {
   system "echo 'foo'"    ;
}
