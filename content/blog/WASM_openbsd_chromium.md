---
title: "Enable WASM in OpenBSD Chromium"
date: 2021-05-17T20:54:01+01:00
draft: false
---

We all need to be able to use Zoom nowadays, as much as I hate it.
OpenBSD's has sensibly locked down a lot of shit, and one example is
`WASM` in Chromium.

Launch Chromium like this: `ENABLE_WASM=1 chrome --enable-wasm`.

You don't get a client obviously. You have to use the web client, so
make sure you click the correct link.

