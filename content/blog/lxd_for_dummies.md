---
title: "LXD for dummies (like me)"
date: 2023-11-03T04:48:36Z
draft: true
categories: ['Computing']
tags: ['linux']
---

This story starts roughly around the time I decided to revive my old mp3 collection, which has been sitting in a `git-annex`-backed git repository on various hard drives for the last couple of years - largely unlistened to.
I'd coincidentally been seeking to detach as much as possible from corporate dependencies across the internet - Spotify being one of them.
These two initiatives coalesced one morning as I lay in bed, thinking about how best to make my music available to me across my home network, to give me that ghetto Spotify experience that only people like me would appreciate - console/Linux-based.

My first thought was to repurpose an existing Raspberry Pi on my network, which currently doesn't do very much, and put `mpd` on it, and use the impeccably named `ncmpcpp` client to play the music. 
I hadn't used `mpd` for some time and surprisingly I couldn't find any old `mpd.conf` files lying around in any of my dotfiles repositories, but it didn't take long to set up on a spare disk partition on my desktop machine - same with `ncmpcpp`.
(I'd forgotten the basics of `git-annex` initially which requires you to `git-annex unlock` files for editing; but I soon did a `git-annex get` to pull all the music files into a new repository from the various hard drive remotes and I ended up with a 89Gb repository of old music, accessible on the command line via `ncmpcpp`.
