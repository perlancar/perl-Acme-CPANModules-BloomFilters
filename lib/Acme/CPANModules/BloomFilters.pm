package Acme::CPANModules::BloomFilters;

# DATE
# VERSION

our $LIST = {
    summary => "Bloom filter modules on CPAN",
    description => <<'_',

My default, go-to choice is L<Algorithm::BloomFilter>, unless there's a specific
feature I need from other implementations.

_
    entries => [
        {
            module => 'Bloom::Filter',
            description => <<'_',

Does not provide mehods to save/load to/from strings/files, although you can
just take a peek at the source code or the hash object and get the filter there.
Performance might not be stellar since it's pure-Perl.

_
            tags => ['category:implementation'],
        },
        {
            module => 'Bloom16',
            description => <<'_',

An Inline::C module. Barely documented. Also does not provide filter
saving/loading methods.

_
            tags => ['category:implementation'],
        },
        {
            module => 'Algorithm::BloomFilter',
            description => <<'_',

XS, made by SMUELLER. Can merge other bloom filters. Provides serialize and
deserialize methods.

_
            tags => ['category:implementation'],
        },
        {
            module => 'Bloom::Scalable',
            description => <<'_',

Pure-perl module. A little weird, IMO, e.g. with hardcoded filenames. The
distribution also provides <pm:Bloom::Simple>.

_
            tags => ['category:implementation'],
        },
        {
            module => 'Bloom::Simple',
            description => <<'_',

Pure-perl module. A little weird, IMO, e.g. with hardcoded filenames.
The distribution also provides <pm:Bloom::Simple>.

_
            tags => ['category:implementation'],
        },
        {
            module => 'Bloom::Faster',
            description => <<'_',

XS module. Serialize/deserialize directly to/from files, no string
(de)serialization provided.

_
        },
        {
            module => 'Text::Bloom',
            description => <<'_',

Pure-Perl module, part of Text-Document distribution. Uses <pm:Bit::Vector>.

_
        },
        {
            module => 'App::BloomUtils',
        },
        {
            module => 'Bencher::Scenarios::BloomFilters',
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
