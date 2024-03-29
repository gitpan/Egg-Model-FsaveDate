use Test::More;
use lib qw( ../lib ./lib );
use Egg::Helper;

test();

sub test {

plan tests=> 6;

my $e= Egg::Helper->run( Vtest => {
#  vtest_plugins=> [qw/ -Debug /],
  vtest_config => { MODEL=> ['FsaveDate'] },
  });

ok $e->is_model('fsavedate'), q{$e->is_model('fsavedate')};

ok my $m= $e->model('fsavedate'), q{my $m= $e->model('fsavedate')};

isa_ok $m, 'Egg::Model::FsaveDate::handler';
isa_ok $m, 'Egg::Model::FsaveDate::Base';

ok my $output= $e->model('fsavedate')->save(<<END_TEST);
????????????????????
????????????????????
????????????????????
????????????????????
????????????????????
END_TEST

ok -e $output, q{-e $output };

}
