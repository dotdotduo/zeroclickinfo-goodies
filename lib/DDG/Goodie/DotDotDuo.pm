package DDG::Goodie::DotDotDuo;
# ABSTRACT: Show a snippet of the ..duo page being searched for.

use DDG::Goodie;

triggers query_lc => qr/^..([^\s]+)$/;

handle matches => sub {
    my ($duo) = @_;
    my $html = "<a href=\"http://www.dotdotduo.com/search/open_search/?q=" . $duo . ">.." . $duo . "..</a>"
    return $duo, html => $html if $uname;
    return;
};

zci is_cached => 1;

1;