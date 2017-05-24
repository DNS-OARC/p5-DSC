# Copyright (c) 2016-2017, OARC, Inc.
# Copyright (c) 2007, The Measurement Factory, Inc.
# Copyright (c) 2007, Internet Systems Consortium, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
#
# 3. Neither the name of the copyright holder nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

unless ( scalar grep {-f $_} qw(/usr/local/bin/ploticus /usr/local/bin/pl /usr/bin/ploticus /usr/bin/pl) ) {
    warn 'Missing ploticus/pl, will not be able to generate graphs';
}

WriteMakefile(
    NAME          => 'DSC',
    DISTNAME      => 'p5-DSC',
    AUTHOR        => q{Jerry Lundström <lundstrom.jerry@gmail.com>},
    VERSION_FROM  => 'DSC/grapher.pm',
    ABSTRACT      => 'DNS Statistics Presenter Perl Library',
    (
        !eval { ExtUtils::MakeMaker->VERSION( 6.3002 ) }
        ? ()
        : ( LICENSE => 'bsd' )
    ),
    (
        eval { ExtUtils::MakeMaker->VERSION( 6.5503 ) }
        ? (
            BUILD_REQUIRES => {
                'Test::More' => 0,
                'CGI' => 0,
                'CGI::Untaint' => 0,
                'Digest::MD5' => 0,
                'File::NFSLock' => 0,
                'File::Temp' => 0,
                'Hash::Merge' => 0,
                'IP::Country' => 0,
                'IP::Authority' => 0,
                'List::Util' => 0,
                'MIME::Base64' => 0,
                'Math::Calc::Units' => 0,
                'Text::Template' => 0,
                'URI::Escape' => 0,
                'XML::Simple' => 0,
                'Net::DNS::Resolver' => 0,
                'Switch' => 0,
            },
            PREREQ_PM => {
                'CGI' => 0,
                'CGI::Untaint' => 0,
                'Digest::MD5' => 0,
                'File::NFSLock' => 0,
                'File::Temp' => 0,
                'Hash::Merge' => 0,
                'IP::Country' => 0,
                'IP::Authority' => 0,
                'List::Util' => 0,
                'MIME::Base64' => 0,
                'Math::Calc::Units' => 0,
                'Text::Template' => 0,
                'URI::Escape' => 0,
                'XML::Simple' => 0,
                'Net::DNS::Resolver' => 0,
                'Switch' => 0,
            }
          )
        : (
            PREREQ_PM => {
                'Test::More' => 0,
                'CGI' => 0,
                'CGI::Untaint' => 0,
                'Digest::MD5' => 0,
                'File::NFSLock' => 0,
                'File::Temp' => 0,
                'Hash::Merge' => 0,
                'IP::Country' => 0,
                'IP::Authority' => 0,
                'List::Util' => 0,
                'MIME::Base64' => 0,
                'Math::Calc::Units' => 0,
                'Text::Template' => 0,
                'URI::Escape' => 0,
                'XML::Simple' => 0,
                'Net::DNS::Resolver' => 0,
                'Switch' => 0,
            }
        )
    ),
    (
        !eval { ExtUtils::MakeMaker->VERSION( 6.46 ) }
        ? ()
        : (
            META_ADD => {
                resources => {
                    homepage   => 'https://github.com/DNS-OARC/p5-DSC',
                    repository => 'https://github.com/DNS-OARC/p5-DSC',
                    bugtracker => 'https://github.com/DNS-OARC/p5-DSC/issues',
                },
            }
        )
    ),
    dist => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'p5-DSC-*' },
);
