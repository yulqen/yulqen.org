---
title: "Quicknote capture 9 May 23"
date: 2023-05-09T08:28:38+01:00
draft: false
categories: ['Tech']
tags: ['quicknotes']
---

- [CompVis/stable-diffusion-v1-4 · Hugging Face](https://huggingface.co/CompVis/stable-diffusion-v1-4 )
- [Watch "Exploring an AI’s Imagination (Stable Diffusion and MidJourney)" on YouTube](https://youtu.be/2R0kGTuYmVI )
- [Faircode model](https://faircode.io/)
- [Watch "Go is great for command-line tools" on YouTube](https://youtu.be/vOhLCTwtgiQ )
- [Why Perl?](https://two-wrongs.com/why-perl )
- [My favorite C compiler flags during development](https://nullprogram.com/blog/2023/04/29/ )
- [The Pomodoro Technique — Why It Works & How To Do It](https://todoist.com/productivity-methods/pomodoro-technique )
- [OKRs: A Guide to Data-Driven Goal Setting for Individuals and Teams](https://todoist.com/productivity-methods/okrs-objectives-key-results )
- [\[Quiz\] Which productivity method is right for you? Get a personalized recommendation](https://todoist.com/productivity-methods )
- [The Complete Guide to Time Blocking](https://todoist.com/productivity-methods/time-blocking )
- This is really good on planning: [beyond_good_intentions_-_prompting_people.pdf](https://scholar.harvard.edu/files/todd_rogers/files/beyond_good_intentions_-_prompting_people.pdf )
- [How I Finally Made Sense of Todoist’s Priority Levels](https://hulry.com/todoist-priority-levels-moscow/ )
- [Watch "Modal forms with Django+HTMX" on YouTube](https://youtu.be/3dyQigrEj8A )
- [Low Byte Productions](https://www.youtube.com/channel/UC56l7uZA209tlPTVOJiJ8Tw )
- [Cuttings / Moving Away from Todoist - to Taskwarrior, SSH & Dropbox - Part 2](https://wanzafran.com/cuttings/moving-away-from-todoist-to-taskwarrior-ssh-dropbox-part-2/ )
- [What Matters: OKR Examples: How to Write Objectives & Key Results](https://www.whatmatters.com/get-examples )
- [What Matters: Why use OKRs? The 3 top reasons](https://www.whatmatters.com/faqs/do-i-need-okrs-goals )
- [What Matters: 4 Mistakes to Avoid When Starting a Business](https://www.whatmatters.com/faqs/4-mistakes-to-avoid-when-starting-a-business )
- [What Matters: How to find the 'why' of your company](https://www.whatmatters.com/faqs/how-to-find-company-why-purpose-mission )
From https://www.whatmatters.com/faqs/4-mistakes-to-avoid-when-starting-a-business:

> If there are too many unknowns to set a committed or aspirational OKR, consider using a learning OKR instead. Rather than setting a goal around what you are striving to accomplish, a learning OKR frames it around what you are trying to learn. Create and implement a mix of these as you chart your business course.

- [beyond_good_intentions_-_prompting_people.pdf](https://scholar.harvard.edu/files/todd_rogers/files/beyond_good_intentions_-_prompting_people.pdf )
- [n8n - an alternative to Zapier](https://docs.n8n.io/hosting/installation/server-setups/digital-ocean/#configure-caddy)
- [Debian Mailing Lists](https://lists.debian.org/users.html)
- [Linux kernel programming guide](https://sysprog21.github.io/lkmpg/) - this is good.
- [Bits from Debian - Blog from the Debian Project](https://bits.debian.org/)
- [List of Internet Relay Chat commands - Wikipedia](https://en.wikipedia.org/wiki/List_of_Internet_Relay_Chat_commands)
- [quicknote](https://git.sr.ht/~yulqen/quicknote)
- [REST API Reference | Todoist Developer](https://developer.todoist.com/rest/v2/?python#next-steps)
- [x11 - Larger &quot;xterm&quot; fonts on HIDPI displays - Unix &amp; Linux Stack Exchange](https://unix.stackexchange.com/questions/219370/larger-xterm-fonts-on-hidpi-displays)
- [Brutalist Web Design](https://brutalist-web.design/)
- [Google Sign-In issues (fix and workaround available!) · Issue #5182 · qutebrowser/qutebrowser · GitHub](https://github.com/qutebrowser/qutebrowser/issues/5182) - this is what I needed to do to get qutebrowser logged into Google.
- [Hacking with Andrew and Brad: tip.golang.org - YouTube](https://www.youtube.com/watch?v=1rZ-JorHJEY)
- [GitHub - fatih/vim-go: Go development plugin for Vim](https://github.com/fatih/vim-go)
- [Mobile App Monetisation - Covert trackers in your pocket / Privacy International](https://privacyinternational.org/case-study/4404/mobile-app-monetisation-covert-trackers-your-pocket )

## article about passwords

from:  https://infosec.exchange/@epixoip/110309336934641249 epixoip@infosec.exchange - Happy #WorldPasswordDay!

> I've cracked billions of #passwords from tens of thousands of #data #breaches in the past 12+ years, and because of this, I likely know at least one #password for 90% of people on the Internet. And I'm not alone! While I primarily crack breached passwords for research purposes and the thrill of the sport, others are selling your breached passwords to criminals who leverage them in #AccountTakeover and #CredentialStuffing attacks. 

> How can you keep your accounts safe?

- Use a #PasswordManager! I recommend @bitwarden and @1password 
- Use a #Diceware style #passphrase  - four or more words selected at random - for passwords you have to commit to memory, like your master password!
- Enable MFA for important online accounts, including cloud-based password managers!
- Harden your master password by tweaking your password manager's KDF settings! For #Bitwarden, use Argon2id with 64MB memory, 3 iterations, 4 parallelism. For #1Password and other PBKDF2 based password managers, set the iteration count to at least 600,000. 
- Use unique, randomly generated passwords for all your accounts! Use your password manager to generate random 14-16 character passwords for everything. Modern password cracking is heavily optimized for human-generated passwords, because humans are highly predictable. Randomness defeats this and forces attackers to resort to incremental brute force! There's no trick you can do to make a secure, uncrackable password on your own - your meat glob will only betray you.
- Use an ad blocker like #uBlock Origin to keep you safe from password-stealing #malware and other browser based threats!
- Don't fall for #phishing attacks and other social engineering attacks! Browser-based password managers help defend against phishing attacks because they'll never autofill your passwords on fake login pages. Think before you click, and never give your passwords to anyone, not even if they offer you chocolate or weed.
- Enterprises: require ad blockers, invest in an enterprise password management solution, audit password manager logs to ensure employes aren't sharing passwords outside the org, implement a Fine Grained Password Policy that requires a minimum of 20 characters to encourage the use of long passphrases, implement a password filter to block commonly used password patterns and compromised passwords, disable #NTLM authentication and disable RC4 for #Kerberos, disable legacy broadcast protocols like LLMNR and NBT-NS, require mandatory #SMB signing, use Group Managed Service Accounts instead of shared passwords, monitor public data breaches for employee credentials, and crack your own passwords to audit the effectiveness of your password policy and user training!

- [github - vim everywhere](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list )
- [Build your own private WireGuard VPN with PiVPN / Jeff Geerling](https://www.jeffgeerling.com/blog/2023/build-your-own-private-wireguard-vpn-pivpn )
- [Frictionless developer environments: Simplify and add lightness](https://blog.testdouble.com/posts/2023-05-02-frictionless-developer-environments/ )
- [Joanna web site](file:///home/lemon/code/html/jollage-test/blog_index.html)
- [you-tldr](https://www.you-tldr.com/?utm_source=hackernewsletter&utm_medium=email&utm_term=show_hn)
- [The UNIX Koans](https://prirai.github.io/books/unix-koans.html )
- [Frictionless developer environments: Simplify and add lightness](https://blog.testdouble.com/posts/2023-05-02-frictionless-developer-environments/ )
- [rqlite](https://rqlite.io/ )
- [Re: \[Toolserver-l\] The Norwegian toolserver - Toolserver-l - lists.wikimedia.org](https://lists.wikimedia.org/hyperkitty/list/toolserver-l@lists.wikimedia.org/message/G572XUIDBJVATFFVAYJMCQVP7F2RSFYP/ )
- [Mailing list etiquette - MediaWiki](https://m.mediawiki.org/wiki/Mailing_list_etiquette )
- [What's up in the Python community?](https://bitecode.substack.com/p/whats-up-in-the-python-community )
- [Nyxt browser: why-lisp.org](https://nyxt.atlas.engineer/article/why-lisp.org )
- [HP® Workstations / HP® Small Business Store](https://www.hp.com/us-en/shop/mlp/business-solutions/workstations )
- [Learn Go with Tests - Learn Go with tests](https://quii.gitbook.io/learn-go-with-tests/ )
- [Watch "4 Super Insane Magic Tricks You Can Do #voila #voilamagic" on YouTube](https://youtu.be/G2hzvYTczhE )
- [Watch "I built my own AutoGPT that makes videos" on YouTube](https://youtu.be/_rGXIXyNqpk )
- https://chaos.social/@daniel_bohrer/110333976882050589 daniel_bohrer@chaos.social - TIL: yt-dlp can just read the Firefox (and other browser's) cookie database, and login to many websites before extracting the video URLs 🤯 

In my case: adding the parameter --cookies-from-browser firefox:~/.mozilla/firefox/<profile-folder> to the command line-

- [Build your own ADS-B receiver - Pi24 client for flight tracking | Flightradar24](https://www.flightradar24.com/build-your-own)
- [Reality 2.0 Episode 145: Authenticating Content With Cryptography](https://www.reality2cast.com/145 )
- [Personalized workout program - MadMuscles](https://madmuscles.com/step-goal)

