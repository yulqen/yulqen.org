---
title: "Heisenbridge"
date: 2023-04-18T16:04:20+01:00
draft: true
categories: ['Tech']
tags: ['matrix']
---

I need to do some updating to this journal because a couple of days ago I implemented a matrix server and I need to document it.

## Setting up heisenbrige bridge for our matrix synapse server follows

1. Set up a new tmux session on the domain called heisenbridge.
1. Created a new directory at ~/heisenbridge-config.
1. Followed the instructions at https://github.com/hifi/heisenbridge to create a new virtualenv at ~/.virtualenvs for heisenbridge and then created the config file with `python -m heisenbridge -c /path/to/synapse/config/heisenbridge.yaml --generate`.
1. Pointed the `synapse` config (`/etc/matrix-synapse/homeserver.yaml`) to to this heisenbridge config file such that the config file now includes this. The additional line is the `app_service_config_files` entry:

```console
 app_service_config_files:
   - /home/lemon/heisenbridge-config/heisenbridge.yaml
 listeners:
   - port: 8008
     tls: false
     type: http
     x_forwarded: true
     bind_addresses: ['::1', '127.0.0.1']
     resources:
       - names: [client, federation]
         compress: false
 database:
   name: psycopg2
   args:
     user: USER
     password: PASSWORD
     database: synapse
     host: localhost
     cp_min: 5
     cp_max: 10
 log_config: "/etc/matrix-synapse/log.yaml"
 media_store_path: /var/lib/matrix-synapse/media
 signing_key_path: "/etc/matrix-synapse/homeserver.signing.key"
 trusted_key_servers:
   - server_name: "DOMAIN"
```

1. I restarted synapse with `sudo systemctl restart matrix-synapse.service` (or similar).
1. Inside the tmux session for heisenbridge, started heisenbridge with `python -m heisenbridge -c /path/to/synapse/config/heisenbridge.yaml`.
1. Then started a DM inside Element to `@heisenbridge:DOMAIN`.
1. Then I joined LiberaChat network with `ADDNETWORK LiberaCHat`, `ADDSERVER LiberaChat irc.eu.libera.chat 6697 --tls`, `OPEN LiberaChat`.
1. A new LiberaChat window opened and the next job was to connect to LiberaChat. At first this was a pain because of SASL authentication. I looked in pass etc for all ZNC, Libera passwords and tried one, but it didn't work. So I dug through the existing (but dormant, because it isn't running) ZNC config on DOMAIN to find my Libera SASL credentials and eventually found it, deep inside `.znc/` on the server. I connected by doing `SASL --username yulqen --password PASSWORD` in element, then doing `CONNECT`. I have saved the SASL credentials for Libera in `pass`.
1. Then you join an IRC channel with `JOIN #django` and bob is your uncle.
1. This will need to be revisited when I reboot DOMAIN.
