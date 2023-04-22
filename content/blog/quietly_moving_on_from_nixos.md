---
title: "Quietly moving on from NixOS?"
date: 2023-04-22T09:14:11+01:00
draft: true
categories: ['Computing']
tags: ['nixos']
---

\- TLDR: *"I'm not clever enough and life is too short."*.

The bald fact is that I spend a lot of time configuring stuff on computers.
Far more time than getting anything productive done.
I guess I am shooting for some kind of paradise state (free software, Unix-based, command-line focused, 100% configurable, reproducible, free from the pervasive tentacles of big tech, ads, spyware and anything that looks like Windows) which, as everyone knows, does not exist.

Linux/Unix systems generally do offer the possibility of all that, and NixOS gets so much of it right.

### OpenBSD

Over the last year or two I've taken my distro-hopping into exotic territory and sinking a massive amount into this pursuit of happiness in these previously-undiscovered worlds.

A Linux user since around 2006, I traditionally switch between the likes of Debian and Arch, both of which I understand really well and am *very* comfortable living in.

But last year I tried OpenBSD, which I ran on all three of my laptops (I hate using VMs - it's bare metal or nothing), during which I endured the self-limiting but highly secure and minimalist approach to computing which that platform affords you.
I learned the strange file system and spent days trying to work out how to format a USB stick.
I joined the various mailing lists and experienced first hand the level of technical expertise that goes into maintaining a system like BSD, whose job is be effective without compromise - predominantly on the server.

### NixOS

Following OpenBSD, I switched to NixOS - about six months ago - and I've enjoyed my time learning about the Nix language, nixpkgs, NixOS and functional, declarative system management.

The Nix package manager and NixOS itself is a brilliant idea that solves a real problem, that even me as an ageing tech hobbyist and sometime programmer feels the benefit from.

Look at my [stream post for 2 January 2023](https://yulqen.org/stream/#monday-2-january-2023).

Once you get your head round Nix, it's a fantastic experience - adding a line of config here and there, commiting the change in your git repository and running `sudo nixos-rebuild switch --flake .#` is all it takes.


I went from having a single `configuration.nix` file, to a whole structure of files worthy of [its own git repository](https://github.com/yulqen/nixosconfig), the workings of which I cloned from someone else, but eventually it made sense to me and I was able to tailor it for my own use.

### Flakes

From the off, I used [Home Manager](https://nix-community.github.io/home-manager/) and then advanced to the barely-documented world of [Flakes](https://nixos.wiki/wiki/Flakes), having fallen for the hype.
I installed Nix on three laptops, all configured from the same repo, with slight hardware differences easily accommodated for by flakes.
The principle behind flakes took me a long time to understand and of course - here's the kicker - I still don't really understand it.
I know this because when I want to do something slightly off script - which is the structure of my `flake.nix`, which I copied from somewhere - it all starts to fall down and feel too difficult.

It's fair to say that the benefit of Nix for me is felt when maintaining those three laptops.
It is great to be able to replicate a system pretty much identically across different machines, just by doing a `git pull` and running `nixos-rebuild`.
I even found out how to manage my whole Firefox configuration using flakes - including extensions and *even bookmarks*.
Really, it's great when it all works.
But getting there can take hours.

### Missing the FHS

Problems arose recently when I wanted to use some bash and perl scripts I use on my Arch desktop machine and Nix being what it is, the realisation that there isn't the full [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard?ref=linuxhandbook.com) to drop a file into, add it to your `PATH`, `chmod +x` it and run it without thinking.
For full reproducibility, you basically either write a derivation for the script (which is great if you're doing it all the time and you *really* get Nix) or your incorporate it into your configuration, which is actually pretty easy to do.

The other way to look at it is it's a total pain in the arse to something which is dead simple on a traditional Linux distribution.
Like run a Bash script.

### Overlays

Another issue is [overlays](https://nixos.wiki/wiki/Overlays). I get the requirement and I've had to implement one - for VSCode plugins, or something, which I wasted several hours trying to understand and then withdrew because actually I'd rather just use plugins from the marketplace, like everyone else - but I just don't have the brainspace to have to do this stuff all the time.

### Laptop death

Two of my laptops are suddenly dead: a x201 and x220 Thinkpad, with battery and network card problems, and therefore the benefit of having a reproducible system is slightly less.
When I make changes my remaining X1 Thinkpad, I am commiting the changes as ever, but I think now I am doing so in anticipation of coming back to Nix at some point in the future.
The git repo will still be there and all I'll need to do is clone it, move a few files around, enable flakes and then rebuild.
That's what I anticipate anyway.

I need to stop writing now, so to conclude: I think I might go back to Debian.

### Instructions to self

For future reference, this is what I need to do.

1. Install NixOS.
2. Clone the nixconfig repository to wherever.
3. Copy the generated `hardware-configration.nix` file to `nixconfig/machines/x1/` (assuming I am doing this for the X1).
4. Enable flakes.
5. Run `sudo nixos-rebuild switch --flake .#`.

That's about it.


