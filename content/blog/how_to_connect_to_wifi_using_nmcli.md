---
title: "How to connect to Wifi using nmcli"
date: 2021-05-18T17:17:03+01:00
draft: false
categories: ['Computing']
---

Something I've been enjoying on OpenBSD is the relative simplicity of
wifi networking compared to Linux. In OpenBSD, you put your SSID details
inside `/etc/hostname.iwm0` or similar (depends on driver name for your
interface). Check out `hostname.if(5)`.

I forgot about this when revisiting my Debian laptops recently. I've
used various means of connecting to wifi on Linux in the past, but
currently I'm using NetworkManager, and I find it a pain to use. The API
for `nmcli` is a disaster area in my view.

I used
[this](https://nullr0ute.com/2016/09/connect-to-a-wireless-network-using-command-line-nmcli/)
web site to finally crack it (thanks!):

```
# nmcli radio
WIFI-HW  WIFI     WWAN-HW  WWAN
enabled  enabled  enabled  enabled
```

```
# nmcli device
DEVICE  TYPE      STATE         CONNECTION
wlan0   wifi      disconnected  --
eth0    ethernet  unavailable   --
lo      loopback  unmanaged     --
```

Then to actually connect to a wireless AP:

```
# nmcli device wifi rescan
# nmcli device wifi list
# nmcli device wifi connect SSID-Name --ask
```

Do not darken my doors ever again.
