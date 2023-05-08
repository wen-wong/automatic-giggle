# 💆🏻‍♂️ automatic-giggle
This project allows users to create a Debian CLI profile by running a single bash script. The idea was initially created to generate profiles for the purpose of setting up new virtual machines everyday. This led to lots of overhead and lots of googling to setup a dev environment. So this project installs all the tools required to look like a dev.

## 🏃🏻‍♀️ How to run it
1. Clone the repository
```
git clone git@github.com:wen-wong/automatic-giggle.git
```
2. Apply user permission to the master file `multipass_setup.sh`
```
chmod u+x multipass_setup.sh
```
3. Run the master file
```
./multipass_setup.sh
```
**NOTE: The installation assumes that you're running it in a Debian environment with Git, Vim and Bash installed.**

## 👀 What does it look like
Here is the following project structure
```
automatic-giggle
|_ multipass_setup.sh   # Master File to run all scripts
|_ scripts
  |_ vim_setup.sh       # Setup Vim
  |_ git_setup.sh       # Setup Git with GitHub Credentials
```

## 💪🏻 What does each script do
### `vim_setup.sh`
Create a VIM configuration file with some preferred settings. Can be updated to your liking.
### `git_setup.sh`
Setup Git with user account and generates an SSH Key so that the user can connect their GitHub account to it.
