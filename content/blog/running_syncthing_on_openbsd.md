---
title: "Running Syncthing on OpenBSD"
date: 2024-04-05T05:36:24+01:00
draft: false
categories: ['Computing']
tags: ['openbsd']
---

I am trying OpenBSD again.

I momentarily went back to NixOS and then thought better of it. It's great, it's clever, it's a tinkerer's nightmare.

So, on the old Thinkpad X201 upon which I throw operating systems to play around, I have installed OpenBSD again.

The installation didn't go particularly well this time and I had a few problems with `doas`. Anyway.

And then it came to installing and setting up `syncthing` which I rely upon to keep all my machines in the same state. As is often the case, I didn't read [the docs](https://openports.pl/path/net/syncthing) properly. I initially set it up to run as an `rc` script. However, by default this will run it under the `_syncthing` user, with the root directory as `/var/syncthing` and for the life of me I couldn't figure out how I must have got round the ensuing permissions issues on my other machines. I didn't bother (or didn't think) to check how I started `syncthing` on those machines - I just assumed I used `systemd` and started the process at system level. Not so. (I used `.xinit` and friends...)

So then I followed the advice in the docs and started the process as *my* user. What's great is that the docs advise starting the process inside a `tmux` session:

`tmux new-session -d -s syncthing '/usr/local/bin/syncthing'`

I use `tmux` all the time but I don't do anything other than create sessions and windows to split up various projects and workflows, so I'm happy to see this use case - it makes perfect sense. Also, to start at boot using `cron`, with `@reboot tmux new-session -d -s syncthing '/usr/local/bin/syncthing'` is awesome, and I never have to think about it again.
