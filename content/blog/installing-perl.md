---
title: Installing Perl After A Wee Break
author: M R Lemon
date: 2021-10-23
draft: false
categories: ['Computing']
---

### Context
In October 2021 I was setting up the x220 with a new environment (KDE, Arch,
etc). I wanted Perl, so this is what I did.

I also wanted to run my `on-add_scheduled_work_task.pl` script for adding lines
to the remote REMIND instance in taskwarrior. Additional CPAN modules needed
for this to work:

* `JSON`
* `DateTime`
* `DateTime-Format-ISO8601`
* `Net::OpenSSH`

### Installation steps

* Install `perlbrew`. Follow the [instructions](https://perlbrew.pl/) to install it.
* `perlbrew install perl-5-34.0`. This can take a WHILE so `tail -f` the
log to watch the fun. I got a test failed when I did this, but the docs
(and the console message) said that I could just run `make` to get it to
install properly. This works.
* `perlbrew switch perl-5.34.0`
* Done. But then we want to install stuff from CPAN. Like JSON.
* Install `cpanm` using perlbrew: `perlbrew install-cpanm`.
* Then I wanted `JSON` so I did `cpanm JSON`. Because we installed `cpanm`
using perlbrew it went into the right place.

This is pretty much it.

