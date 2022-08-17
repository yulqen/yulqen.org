---
title: "Git diff with vimdiff"
date: 2022-08-17T15:06:57+01:00
draft: false
categories: ['Computing']
tags: [vim, git]
---

### git difftool

You could just do:

> `git difftool --tool=vimdiff --no-prompt`

This will open `git diff` in vim.

To tell git to always use vimdiff:

> `git-config --global diff.tool vimdiff`
`git-config --global merge.tool vimdiff`

Omit `--global` to set these for the repo in the working directory.

Once these settings are set, you can do `git difftool` to launch it.

Another useful config is `difftool.prompt` - this will stop Vim prompting about
launching `vimdiff`:

> `git-config --global difftool.prompt false`

### Basic vimdiff

`]c`    - next difference \
`[c`    - previous difference \
`do`    - diff obtain \
`dp`    - diff put \
`zo`    - open folded text \
`zc`    - close folded text \
`:diffupdate` - re-scan the files for differences \

### IMPORTANT - READ-ONLY

By default, vimdiff opens both file in READONLY mode. To be able to make changes to the file, do `:set noro` in vim, which will remove READONLY.

