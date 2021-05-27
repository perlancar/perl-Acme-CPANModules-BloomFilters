package Acme::CPANModules::BloomFilters;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => "Bloom filter modules on CPAN",
    description => <<'_',

Bloom filter is a data structure that allows you to quickly check whether an
element is in a set. Compared to a regular hash, it is much more
memory-efficient. The downside is that bloom filter can give you false
positives, although false negatives are not possible. So in essence you can ask
a bloom filter which item is "possibly in set" or "definitely not in set". You
can configure the rate of false positives. The larger the filter, the smaller
the rate. Some examples for application of bloom filter include: 1) checking
whether a password is in a dictionary of millions of common/compromised
passwords; 2) checking an email address against leak database; 3) virus pattern
checking; 4) IP/domain blacklisting/whitelisting.

In Perl, my default go-to choice is <pm:Algorithm::BloomFilter>, unless there's
a specific feature I need from other implementations.

_
    entries => [
        {
            module => 'Bloom::Filter',
            description => <<'_',

Does not provide mehods to save/load to/from strings/files, although you can
just take a peek at the source code or the hash object and get the filter there.
Performance might not be stellar since it's pure-Perl.

_
            tags => ['implementation'],
        },
        {
            module => 'Bloom16',
            description => <<'_',

An Inline::C module. Barely documented. Also does not provide filter
saving/loading methods.

_
            tags => ['implementation'],
        },
        {
            module => 'Algorithm::BloomFilter',
            description => <<'_',

XS, made by SMUELLER. Can merge other bloom filters. Provides serialize and
deserialize methods.

_
            tags => ['implementation'],
        },
        {
            module => 'Bloom::Scalable',
            description => <<'_',

Pure-perl module. A little weird, IMO, e.g. with hardcoded filenames. The
distribution also provides <pm:Bloom::Simple>.

_
            tags => ['implementation'],
        },
        {
            module => 'Bloom::Simple',
            description => <<'_',

Pure-perl module. A little weird, IMO, e.g. with hardcoded filenames.
The distribution also provides <pm:Bloom::Simple>.

_
            tags => ['implementation'],
        },
        {
            module => 'Bloom::Faster',
            description => <<'_',

XS module. Serialize/deserialize directly to/from files, no string
(de)serialization provided.

_
            tags => ['implementation'],
        },
        {
            module => 'Text::Bloom',
            description => <<'_',

Pure-Perl module, part of Text-Document distribution. Uses <pm:Bit::Vector>.

_
        },
        {
            module => 'App::BloomUtils',
            category => ['cli'],
        },
        {
            module => 'Bencher::Scenarios::BloomFilters',
            category => ['benchmark'],
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
