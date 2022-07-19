---
title: "Create new disk partition in OpenBSD"
date: 2022-07-17T07:46:14+01:00
slug: create_new_partition_openbsd
draft: false
tags: ['openbsd']
---

1. When I installed OpenBSD, the autoinstaller created a partition table for me. Interestingly (and I only just discovered this), it left a percentage of the disk free. This is a brilliant strategy, because it saves you having to do a lot of annoying resizing when you want to change things. In my case, I wanted to add a new partition of about 10G or so, for a `/jails` thing - check out [https://www.tubsta.com/2020/01/creating-a-chroot-in-openbsd/](https://www.tubsta.com/2020/01/creating-a-chroot-in-openbsd/).
1. Before I knew about the free space available, my thinking was to reduce the size of `/var` which is a whopping 32Gb on this laptop, waaaay more than I need. This isn't a web server I'm running here. So I started to think about shrinking that. Of course, I couldn't shrink the partition when it was mounted so I tried to remount, but I couldn't do that because it was in use, and the OS told me off for that. By the way, to find out what processes are using a partition, do `# fuser /dev/sd1a` - that tells you. Theoretically, you could go and kill all those processes and then unmount, but at that point, I thought I'd better do this using the OpenBSD installer shell.
1. I rebooted to the Installer on a USB and hit 'S' to enter the shell.
1. As a newbie, I thought I could just list the partitions of the drive (check `dmesg` to get the right drive - in my case it as `sd0`). But I got an error saying file not found. That is because there are no device nodes created for this razzer. Or that was my first thought anyway. To create the drive nodes, you do `cd /dev && sh ./MAKEDEV sd0` (replacing the correct drive of course). This creates the nodes.
1. But when I did `# disklabel -p g sd0c` (you use `c` to get the whole drive), I saw only two partitions. Hm, I thought - why? The answer was because I encrypted my drive of course! One of the partitions I could see in the table was `RAID` - I needed to unencrypt the drive to access the partitions!
1. This is where the famed OpenBSD man pages fell down for me - I couldn't work out how to use `bioctl` to do that (I knew it was `bioctl` though). So I hit the internet and found this: [https://alextsang.net/articles/20170422-192400/index.html](https://alextsang.net/articles/20170422-192400/index.html).  The upshot is that to unlock a drive, you do `bioctl -c C -l /dev/sd0a softraid0`. You will be asked for your passphrase and you give it. This opens the volume in question which will reveal all the additional partitions within, tied to another device descriptor - in my case `sd2`. Check that with `# disklabel -p g /dev/sd2c` and there you are - you should see all your partitions.
1. This was when I noticed that there was XGb of free space (look at the top of the partition table - it's there!). So I didn't need to shrink a volume - I needed to *add* a volume. So I came out of `disklabel` (Ctld+D) and rebooted into the machine.
1. To a volume, I did `# disklabel -E sd2`. Then see the table with `p g` (`g`) gets sizes in Gb.
1. `a` - it wanted to add `m` - fine. Do that.
1. Size it appropriately as per the man pages (I tried to use `%` and `&` to denote sizes but it didn;t work, so just put a number that looked good in - aiming for 10% of available free space).
1. `w` the parition. But notice - it did not create the mount point! I was a bit confused about that. I wanted to create the mount point now! But I couldn't - not even `disklabel` - the `m` option (modify) let me do it, and I'm damn sure the man pages say you can do it that way.
1. By this time, I was resorting to using another *web page* (sorry, OpenBSD man pages): [https://cvs.afresh1.com/~andrew/o/faq/faq14.html](https://cvs.afresh1.com/~andrew/o/faq/faq14.html). After creating the partition, I now had to create a new file system on it. I did that with `# newfs sd2m`. At this point I could happily mount it, and I did: `# mount /dev/sd2m /jails`. THEN, I added it to `/etc/fstab` - For this, I reverted back to the original tutorial to get the correct flags ([https://www.tubsta.com/2020/01/creating-a-chroot-in-openbsd/](https://www.tubsta.com/2020/01/creating-a-chroot-in-openbsd/)), - this is how it looks in `/etc/fstab`:

    ```console
    7da04eb499cd98e3.b none swap sw
    7da04eb499cd98e3.a / ffs rw,softdep,noatime 1 1
    7da04eb499cd98e3.l /home ffs rw,softdep,noatime,nodev,nosuid 1 2
    7da04eb499cd98e3.d /tmp ffs rw,softdep,noatime,nodev,nosuid 1 2
    7da04eb499cd98e3.f /usr ffs rw,softdep,noatime,nodev 1 2
    7da04eb499cd98e3.g /usr/X11R6 ffs rw,softdep,noatime,nodev 1 2
    7da04eb499cd98e3.h /usr/local ffs rw,softdep,noatime,wxallowed,nodev 1 2
    7da04eb499cd98e3.k /usr/obj ffs rw,softdep,noatime,nodev,nosuid 1 2
    7da04eb499cd98e3.j /usr/src ffs rw,softdep,noatime,nodev,nosuid 1 2
    7da04eb499cd98e3.e /var ffs rw,softdep,noatime,nodev,nosuid 1 2
    7da04eb499cd98e3.m /jails ffs rw 1 2
    swap /tmp mfs rw,nodev,nosuid,-s=800m 0 0
    swap /home/lemon/.cache mfs rw,nodev,nosuid,-s=3g 0 0
    ```
1. There it is, near the bottom: `/jails`.
1. I rebooted, and prayed. I've had problems with fstab in the past. But not this time!
1. Everything fired back up and all was well!
