package DDG::Goodie::DotDotDuo;
# ABSTRACT: Show a snippet of the ..duo page being searched for.

use DDG::Goodie;

triggers query_lc => qr/^..([^\s]+)$/;

handle matches => sub {
    my ($uname) = @_;
    my $html = "<a href=\"http://www.w3schools.com\">Visit W3Schools</a>"
    return $uname, html => $html if $uname;
    return;
};

zci is_cached => 1;

1;