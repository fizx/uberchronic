#!/usr/bin/env ruby
ENV["ARCHFLAGS"] = "-arch #{`uname -p` =~ /powerpc/ ? 'ppc' : 'i386'}"
require 'mkmf'

ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))

LIBDIR = Config::CONFIG['libdir']
INCLUDEDIR = Config::CONFIG['includedir']
myincl = %w[/usr/local/include /opt/local/include /usr/include]
mylib = %w[/usr/local/lib /opt/local/lib /usr/lib]

find_header('time.h', INCLUDEDIR, *myincl) or abort "need time.h"

create_makefile('get_date')