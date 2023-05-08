#!/bin/bash


# Setup Default Branch
echo -e "Setup Default Branch to main...\n"
git config --global init.defaultbranch main

# Setup Colors
echo -e "Setup Git Colors...\n"
git config --global color.ui auto

function init_config() {
	echo -e "Intializing User..."
	# Ask for User Inputs
	read -p "$ Username: " uservar
	read -p "$ Email: " emailvar

	echo ""

	# Setup User
	git config --global user.name $uservar
	git config --global user.email $emailvar

	verify_config
}

function verify_config() {
	echo -e "Verify User..."
	# Verify the Configuration Results
	git config --get user.name | { read user; echo "Username: $user"; }
	git config --get user.email | { read email; echo "Email: $email"; }

	read -p "$ Are these initials above correct? [y/n]?" resultvar

	echo ""

	if [ $resultvar == "y" ] || [ $resultvar == "Y" ] || [ $resultvar == "Yes" ];
	then
		generate_ssh_key
	else
		init_config
	fi
}

function generate_ssh_key() {
	echo -e "Verify if SSH Key already exists..."
	# Verify Existing SSH Key
	ssh_file=$(ls ~/.ssh/id_ed25519.pub)
	if [[ $ssh_file =~ "^/.ssh/id_ed25519.pub" ]];
	then
		echo -e "SSH Key already exists."
	else
		read -p "$ SSH Key not found. Would you like to generate a new key? [y/n]?" resultvar

		if [ $resultvar == "y" ] || [ $resultvar == "Y" ] || [ $resultvar == "Yes" ];
		then
			email=$(git config --get user.email)
			ssh-keygen -t ed25519 -C $email
			cat ~/.ssh/id_ed25519.pub
		else
			echo -e "\nYou can generate a key using 'ssh-key -t ed25519 -C <email>' when you're ready.\n"
		fi
	fi
}

init_config
