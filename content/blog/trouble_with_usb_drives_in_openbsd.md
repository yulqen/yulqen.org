---
title: "Trouble with USB drives in OpenBSD"
date: 2022-09-13T08:31:41+01:00
draft: true
categories: ['Computing']
tags: ['openbsd']
---

Coming from a Linux background, creating drives on OpenBSD is a little weird.

You use `fdisk` to create a suitable "meta" partition on a drive - one of four available, and then inside that you use `disklabel` to create up to 16 paritions that are used for your files.
Details are given, as ever, in the [OpenBSD FAQ](https://www.openbsd.org/faq/faq14.html).

I use [git-annex](https://git-annex.branchable.com/) to manage my file archive and I love git-annex!
I use it completely manually (I don't use git-annex assistant) and I've allowed a single repository to become far too big, spanning across multiple drives and servers, but that is an issue for another day.

I needed to move a large video file from the internal drive (managed by git-annex) on my desktop computer which runs Debian, so that I could watch it on my laptop which runs OpenBSD so i needed a USB drive suitable for both systems.

FAT32, I thought. Great.

Creating a FAT32 drive in OpenBSD is of course doable.

Of course I believed that you needed to have a MBR on the drive, so I ran `fdisk -iy sd3` to create the default OpenBSD `A6` meta partition. (I go the device name from doing `sysctl hw.disknames`).

Then I created a new `i` parition: `disklabel -E sd3`, `a i`, `w`, `q`.

Next, the file system: `newfs_msdos -F 32 /dev/sd3i`.

This last command did't produce any output, it just quit after thirty seconds or so.
From my experience, `newfs` can take time, so I wasn't concerned about the time it took, but there was a problem.
After running `newfs` and running `disklabel -h sd3`, I saw that the `i` partition was gone.
