use Module::Build;

my $builder = Module::Build->new(

  module_name       => 'Egg::Model::FsaveDate',
  dist_version_from => 'lib/Egg/Model/FsaveDate.pm',
  dist_abstract     => 'lib/Egg/Model/FsaveDate.pm',
  dist_author       => 'Masatoshi Mizuno E<lt>lusheE<64>cpan.orgE<gt>',
  license           => 'perl',

  requires => {

    'Egg::Release'         => '3.03',
    'Digest::SHA1'         => '2.11',
    'File::Path'           => '2.04',

    'Test::More'           => 0,
    'Test::Pod'            => 0,
    'Test::Perl::Critic'   => 0,
    'Test::Pod::Coverage'  => 0,
    },

  );

$builder->create_build_script();
