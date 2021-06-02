# DNS Statistics Presenter Perl Library

DNS Statistics Presenter (DSP) is a tool used for exploring statistics from
busy DNS servers collected by DNS Statistics Collector (DSC).  This is the
Perl library that is used to extract and graph DSC data.

DNS Statistics Collector can be found here:
- https://github.com/DNS-OARC/dsc

DNS Statistics Presenter can be found here:
- https://github.com/DNS-OARC/dsp

More information about DSP/DSC may be found here:
- https://www.dns-oarc.net/tools/dsc
- https://www.dns-oarc.net/oarc/data/dsc

Issues should be reported here:
- https://github.com/DNS-OARC/p5-DSC/issues

Mailinglist:
- https://lists.dns-oarc.net/mailman/listinfo/dsc

# Install

Following dependencies are needed, example for Debian/Ubuntu.

```
sudo apt-get install libcgi-untaint-perl libfile-nfslock-perl libhash-merge-perl libmath-calc-units-perl libtext-template-perl libxml-simple-perl libswitch-perl libnet-dns-perl
```

Or you can install them all using `cpanm`.

```
cpanm --quiet --installdeps --notest .
```

The Perl module `IP::Country` is needed also which may not exist as a package
for some distributions, you could install it manually.

```
cpanm --quiet --notest IP::Country
```

Ploticus is used to create the graphs, install it via the distributions
packages or manually. Example for Debian/Ubuntu.

```
sudo apt-get install ploticus
```

Now you can install.

```
perl Makefile.PL
make
make test
make install
```
