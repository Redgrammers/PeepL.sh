# PeepL.sh
[![Join the chat at https://gitter.im/Redgrammers/PeepL.sh](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/Redgrammers/PeepL.sh?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)<br/>
An easy log in/out system for tracking users on your computer or people on a server.<br/>
Comes with Peeps.

Peeps are a way of marking if your online, offline, AFK, etc. Someone just accesses a public file in the system corresponding to you. For example, user `John`'s Peep would be located at `/Peeps/John.peep` and it could be viewed by typing `peep -v -u John`. For John to set his Peep he could use `peep`.

# Full syntax of `peep` bash command
```
NAME
	peep - Peep manager

SYNOPSIS
	peep [-v] [-u username] [-r username]
	peep write [vim] [nano] [-a application] [-u username]

DESCRIPTION
	`peep` is the Peep manager for PeepL.

OPTIONS
	-v
		View your own or anyone else's Peep.
	-u username
		Select a username for peep to run as. Can only be run as root unless with -v.
	-r username
		Ready a user's Peep. Can only be run as root.
	write
		Extra options for writing your Peep.
		vim
			Use this if you want to edit your Peep with `vim`.
		nano
			Use this if you want to edit your Peep with GNU `nano`.
		-a application
			Use this if you have an application that's better than `vim` and `nano`, and you want to use it.
		-u username
			Select a username for peep to run as. Can only be run as root.
```

# Q&A
Q: *?<br/>
A: You monster.
