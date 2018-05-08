if [ ! $(id -u) ] ; then
    echo 'This script must be run with root privileges' >&2
        exit 1
	fi
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	apt update
	apt -y install google-chrome-stable
