# practice-lab

A bash script that automatically creates users, groups, and installs necessary packages on a Linux machine.

## About

> Bash Script combined with Account Creation to demonstrate understanding of different account types while
> reducing the amount of keystrokes inside terminal

## What It Does

> - Creates groups
> - Creates users with IDs, group membership, and descriptions
> - Installs packages with dnf

## Files

> - `install.sh` — the main script
> - `employees.txt` — new employee data 
> - `groups.txt` — group list - reference
> - `pkgs.txt` — package list - reference

## How to Run

> The commands to run it. Note it needs sudo:
> ```bash
> sudo bash install.sh
> ```

## What I Learned

> Built this script to combine learning more about basic scripting and creating user/groups. I opted out of using more advanced bash scripting because
> 1. Haven't learned topic in depth
> 2. Track my Linux progress as I learn more
> 3. Repetition allows commands to become second nature

## Future Improvements

> Shows you know where it could go next:
> - Use a loop to read from a file instead of hardcoding
> - Add error checking (skip users/groups that already exist)
> - Eventually rebuild with more advanced features and commands
