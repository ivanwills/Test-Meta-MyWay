use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name       => 'Test::Meta::MyWay',
	license           => 'perl',
	dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
	dist_version_from => 'lib/Test/Meta/MyWay.pm',
	requires          => {
		'perl'             => 5.008,
	},
	build_requires => {
		'Test::More'       => 0,
		'Test::NoWarnings' => 0,
	},
	add_to_cleanup     => [ 'Test-Meta-MyWay-*' ],
	create_makefile_pl => 'traditional',
	create_license     => 1,
	meta_merge => {
		resources => {
			repository => 'git://github.com/ivanwills/Test-Meta-MyWay.git',
			bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Test::Meta::MyWay',
		},
	},
);

$builder->create_build_script();
