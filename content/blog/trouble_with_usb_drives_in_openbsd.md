---
title: "Trouble with USB drives in OpenBSD"
date: 2022-09-13T08:31:41+01:00
draft: false
categories: ['Computing']
tags: ['openbsd', 'linux']
---

Coming from a Linux background, creating drives on OpenBSD is a little weird.

You use `fdisk` to create a suitable "meta" partition on a drive - one of four available, and then inside that you use `disklabel` to create up to 16 paritions that are used for your files.
Details are given, as ever, in the [OpenBSD FAQ](https://www.openbsd.org/faq/faq14.html).

I use [git-annex](https://git-annex.branchable.com/) to manage my file archive and I love git-annex!
I use it completely manually (I don't use git-annex assistant) and I've allowed a single repository to become far too big, spanning across multiple drives and servers, but that is an issue for another day.

I needed to move a large video file from the internal drive (managed by git-annex) on my desktop computer which runs Debian, so that I could watch it on my laptop which runs OpenBSD so i needed a USB drive suitable for both systems.

FAT32, I thought. Great.

Creating a FAT32 drive in OpenBSD is of course doable.

Of course I believed that you needed to have a MBR on the drive, so I ran `fdisk -iy sd3` to create the default OpenBSD `A6` meta partition. (I got the device name from doing `sysctl hw.disknames`).

Then I created a new `i` parition: `disklabel -E sd3`, `a i`, `w`, `q`.

Next, the file system: `newfs_msdos -F 32 /dev/sd3i`.

This last command did't produce any output, it just quit after thirty seconds or so.
From my experience, `newfs` can take time, so I wasn't concerned about the time it took, but there was a problem.
After running `newfs` and running `disklabel -h sd3`, I saw that the `i` partition was gone and of course as a result I was unable to mount or do anything with the disk.

At that point, I tried a few things, including formatting the partition using `newfs_ext2fs`, but that seemed to hang completely without doing anything at all.

Stuck.

It was then that I decided to look at a FAT 32 drive I was already using for my ~/Music folder, managed using `beets`.
I couldn't remember whether I created this drive in Linux or OpenBSD but I knew it was a FAT32 drive, mounted using `mount_msdos`.

The interesting and surprising thing was that `fdisk sd2` revealed that it did *not* have a `A6` OpenBSD parition on it. Nothing.
`disklabel -h sd2` revealed an `i` partition of type `MSDOS` which is what I would have expected.
How was this?
Does a USB drive not require a MBR? Surely it needs a partition table, albeit the "boot" element of Master Boot Record is probably notable.

And here is demonstrated my lack of knowledge about operating systems, particularly the boot process. No shame in that - no one is really supposed to know this stuff that doesn't have a computer science degree or is a sysadmin of sorts.

So I decided I need to try and replicate the situation I could see with my Music drive.
To do this, I used `dd if=/dev/zero of=/dev/sd3 bs=1M`, but I didn't need it all doing so I quit after ten minutes (probably just needed to zero out the beginning of the drive with `count=1` but, as I said, what do I know?).

`fdisk sd3` proved that the `A6` partition was gone.

I repeated the steps, creating a new `i` parition and formatted the drive.
This time it worked.

I could mount the drive on OpenBSD and on Linux, but without a partition number, which is very very weird to me: `mount /dev/sde`.
I have no idea if what I am doing breaks some universal law or it entirely congruent with one that I have no knowledge of.
Clearly the latter.

Either way, I got my drive.
