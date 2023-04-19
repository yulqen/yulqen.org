---
title: "Run your life with taskwarrior"
date: 2023-04-18T19:57:42+01:00
draft: false
categories: ['Computing']
tags: ['taskwarrior']
---

## Introduction

Much of the material on the internet tells you *how* to use [taskwarrior](https://taskwarrior.org), but little of it explains *why* you should use it.

Actually, this isn't technically true. There are enough plaintext, privacy, command-line and free software advocates out there who eschew proprietary, subscription/cloud-based productivity web applications like Notion, Roam, Todoist, Trello and all the rest, and who praise taskwarrior's power.

But I've found that much of this material ends up reguritating the basics of taskwarrior's functionality (projects, tags, reports, UDAs) which gets tiresome after a while. There is the [excellent document](https://taskwarrior.org/docs/) after all.

I'd prefer to read about *the outcomes* that can be achieved when taskwarrior is deployed alongside or integrated with other tools that share taskwarrior's philosophy of being "flexible, fast and unobtrusive". Like your shell, your own VPS or a scripting language like Perl or Python.

To what extent can this seemingly humble command line tool do the same job that the big boys purport to do? Even big boys like Jira and Asana?

I don't know yet, but I will probably base this article around the following:

- The hooks system
- `taskd`
- `tasklib`
- `remind`
- `vimwiki`
- extensions/tools on taskwarrior.org
- other stuff I haven't thought of right now

I'm undecided at this point (as I write) whether to enter into tutorial-style sections, outlining how I've achieved certain funtionalities. It's likely that I will do some of that, but I want to focus on the integrations that I see as being possible and what they allow us to achieve - whether I've personally implemented them or not.

I want to explore and learn as I write.

This may turn into a short series of posts - I don't know yet.

## Let's get the basics out of the way - right now

Let's get the hackneyed stuff out of the way.

Taskwarrior is a mature project and the key feature set is already there. The original developers have moved on but there are new maintainers and development work happens, including what looks like a new storage core rewritten in Rust. I'm not clear on the reasons for that. Taskwarrior certainly doesn't lack speed, it being written in C++.

But in terms of the the typical user profile, you're probably a Linux programmer, sysadmin or free software or plaintext bore; you know how to install taskwarrior and that `task` is a command line application accessed via the blinking prompt in your terminal, *like all the best stuff in your nerdy computing life*. 

You already know how to use many if not all of taskwarrior's features and how to configure it to your liking.

You value efficiency and speed in your computing and appreciate that basic actions in taskwarrior such as adding, deleting, tagging, searching and listing tasks is fast.

You've may have already set up your own `taskd` server (and suffered the pain of generating those certificates) and understand that taskwarrior is probably the fastest syncing application you've ever seen. Lightening fast.

It is also open source and enables complete privacy, eschewing the proprietary cloud-based mega-applications prevalent nowadays such as Trello, Todoist, Notion and so on.

## Using taskwarrior as your task manager

It seems odd to ask but it is a fair question: can taskwarrior be used as your primary task manager?

Terminal people know the answer to that but anyone used to a browser/phone orientated application might think that they will lose a lot of functionality, not having their tasks available in any browser instance or on their phone. That is a fair point and can be addressed easily.

Yes you can.
But I am very much terminal based.
I work at home for my job and use their laptop (a very locked-down Windows 10 machine typical of most corporate/Government jobs) and so continuously defer to the terminal on my own machines to access taskwarrior and my notes.

But like most people, I like to have access to my tasks on my phone, although this isn't as important for me as the developers of other task management systems who prioritise their mobile app offering would like to think.
I mostly use my phone for capturing tasks on the go.
At a pinch, I can view a list of tasks if I need to but I have other ways of getting tasks 'out there' if I need to.
I use termux with regular taskwarrior installed on it on my OnePlus 5 Android phone for this.

### Speed

For me, taskwarrior is lightening fast to use.

The basic commands, even in their unaliased, native form, are ingrained in my fingers: `task` (the 'next' report, my default), `task sync` and  `task add [...]` are most used.

After every taskwarrior transaction I instinctively type `task sync` and hit return and do it so quickly that I barely see the confirmatory messages.

Of course, I have aliased these commands to make them even quicker but I don't overdo this because I often don't need to.

### Functionality

We'll not cover it in detail here but taskwarrior has all the functionality I require in terms of the metadata I find useful attaching to an actionable item: due date, scheduled (start) date, tags, projects, priority, annotations (comments, basically); listing, filtering, searching, sorting - it's all very much there.

Taskwarrior has other things that are rarely seen in the other cloud-based applications that I've used to date: User Definted Attributes (UDAs) - you do similar in Trello with a paid subscription; contexts, which is just another way to filter your tasks and coefficients for urgency - to name a few.

### Configurability

There is lots to say here - taskwarrior is incredibly configurable in itself.
Run `man taskrc` to learn about everything you can do with your configuration file.
I like to set up my own reports for various things, tweaking urgency coefficients, colours and sorting.

### Hooks

Now we open out into taskwarrior's interoperability with tools, and the landscape is huge.
The first thing to look at is taskwarrior's hooks system - basically you can write a hook in whatever language you like to trigger on a particular action, such as adding, updating or removing a task.
I used this to interact with `remind` - more below.
The sky is the limit here - you can trigger a whole train of events if you want to.

TO BE CONTINUED.
