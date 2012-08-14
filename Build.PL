
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Config" => 0,
    "File::Spec" => 0,
    "HTTP::Daemon" => 0,
    "HTTP::Status" => 0,
    "IO::CaptureOutput" => 0,
    "IO::Select" => 0,
    "IO::Socket" => 0,
    "Module::Build" => "0.3800",
    "POSIX" => 0,
    "Sys::Hostname" => 0,
    "Test::More" => 0,
    "URI" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3800"
  },
  "dist_abstract" => "fetch websites and executes tests on the results",
  "dist_author" => [
    "Jens Rehsack <rehsack\@cpan.org>"
  ],
  "dist_name" => "WWW-Mechanize-Script",
  "dist_version" => "0.100",
  "license" => "perl",
  "module_name" => "WWW::Mechanize::Script",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Config::Any" => 0,
    "Config::Any::Base" => 0,
    "Cwd" => 0,
    "Exporter" => 0,
    "File::Basename" => 0,
    "File::ConfigDir" => "0.004",
    "File::Find::Rule" => 0,
    "File::Path" => 0,
    "File::Slurp" => 0,
    "Getopt::Long" => 0,
    "Hash::Merge" => "0.12",
    "IO::File" => 0,
    "JSON" => "2.00",
    "List::MoreUtils" => "0.22",
    "Module::Pluggable" => "4.0",
    "Module::Pluggable::Object" => 0,
    "Params::Util" => "0.33",
    "Pod::Usage" => 0,
    "Template" => "2.20",
    "Text::Balanced" => 0,
    "WWW::Mechanize" => "1.72",
    "WWW::Mechanize::Timed" => "0.44",
    "base" => 0,
    "constant" => 0,
    "parent" => 0,
    "perl" => "5.014",
    "strict" => 0,
    "vars" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/check_web2.pl",
    "bin/wtscript2json.pl"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
