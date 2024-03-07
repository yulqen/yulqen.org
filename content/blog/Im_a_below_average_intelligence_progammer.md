---
title: "I'm a below average intelligence programmer"
date: 2024-03-07T08:51:54Z
draft: false
categories: ['Computing']
tags: ['code', 'rant']
---

I have just read [I'm a programmer and I'm stupid](https://antonz.org/stupid/) and have been inspired to say the same thing.

I wrote some time ago about [Being on the left of the bell curve](https://yulqen.org/blog/being_below_average/) and this blog post accounts for the programmer/coding aspect of that.

I follow [Hacker News](https://news.ycombinator.com/) and my RSS feed reader updates constantly from dozens of blogs about programming, programming languages and similar technologies.
I find most of it fascinating and I've always suffered from over-curiosity to the expense of productivity.
I try so many things and leave fragments of learning and effort in the form of abandoned programs and mini software projects scattered all over my hard drive.
I love tech.

But am I any good at it?

Compared to most of the commenters on Hacker News, I'm obviously not, based on the fact that I don't understand much of what they're talking about.
When I read issues and comments on projects on Github, I struggle.
I even struggle reading my own code.
Just yesterday I read through the code for https://git.yulqen.org/go/datamaps-go/ and I thought, "how did I do that?"

I am currently navigating my way through the various technologies involved in creating a Kubernetes pipeline at work and I can't believe how complex the cloud is.
There are many and good reasons for this and when it works it is wonderful, but it's bigger than my brain can handle.
I have no idea how to debug a problem in a fifteen step CI/CD pipeline involving as many separate cloud services, each configured with scraps of JSON containing secret keys and arcane configuration key/value pairs.

## My current 'stack'

1. I have used many Linux operating systems in recent years, most recently [Arch](https://archlinux.org/) and [Artix Linux](https://artixlinux.org/) on my desktop and various laptops. I [flirted with Nix OS](https://yulqen.org/blog/quietly_moving_on_from_nixos/) and on [my stream](https://yulqen.org/stream/) I claim that NixOS was computing nirvana. But now I'm migrating back to Debian [stable] on all my machines (the servers were already mostly Debian) for the simplicity and stabilty.
2. I am favouring [Go](https://go.dev/) for new programming projects. For many reasons, but one of them is for its explicit syntax and rigidity compared to other languages.
3. Plain text for tasks and notes. [Obsidian](https://obsidian.md/), [Roam](https://roamresearch.com/), [Todoist](https://todoist.com), [Trello](https://trello.com), [TiddlyWiki](https://tiddlywiki.com/), [Org Mode](https://orgmode.org/) and a million others have been tried and put down over several year in favour of [Vim](https://www.vim.org/). *Fuck Obsidian*
4. [Markdown](https://daringfireball.net/projects/markdown/).
4. [Bash](https://www.gnu.org/software/bash/).
4. Django, when doing web stuff in Python. It just does it all.
5. SQL, for data storage - with [Sqlite](https://www.sqlite.org/index.html) for simple projects and [PostgreSQL](https://www.postgresql.org/) or [MariaDB](https://mariadb.com/) for bigger projects.
6. Docker running on a Debian VPS with [Apache](https://apache.org/) for reverse proxy.
7. [rsync](https://rsync.samba.org/). I fucking love rsync.
8. [Hugo](https://gohugo.io/) for this site. Everything written in markdown.

Back to work.
