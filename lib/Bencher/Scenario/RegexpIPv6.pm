package Bencher::Scenario::RegexpIPv6;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark matching IPv6 address',
    participants => [
        {
            module=>'Regexp::IPv6',
            code_template => '<ip> =~ $Regexp::IPv6::IPv6_re'
        },
    ],
    datasets => [
        {args=>{ip=>'ff02::1'}},
        {args=>{ip=>'2001:cdba:0000:0000:0000:0000:3257:9652'}},

        {args=>{ip=>'127.0.0.1'}},
    ],
};

1;
# ABSTRACT:
