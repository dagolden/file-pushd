use strict;
use warnings;
use Test::More 0.96;
use File::pushd;
use Cwd;
use File::Spec::Functions 'catdir';

{
    my $temp = tempd();
    mkdir '0' or die("unable to create 0 directory\n");

    my $parent = "$temp";
    my $child  = pushd('0');

    is( "$child", catdir( "$parent", '0' ) );
}

done_testing;
