#!/bin/sh

# Login as the root.
sudo -s

# Update Aptitude.
echo '#################################################'
echo '# Updating the Apitute before running after.sh  #'
echo '#################################################'
sudo apt-get update

# Install Java.
if dpkg -s 'openjdk-11-jre-headless'; then
	echo '#################################################'
	echo '# OpenJDK is already installed. Moving on.      #'
	echo '#################################################'
else
	echo '#################################################'
	echo '# OpenJDK could not be found. Installing..      #'
	echo '#################################################'

	sudo apt-get install openjdk-11-jre-headless -y
fi

if service --status-all | grep -Fq 'elasticsearch'; then
	echo '#################################################'
	echo '# Elasticsearch is already installed. Moving on.#'
	echo '#################################################'
else

	echo '#################################################'
	echo '# Elasticsearch service not found. Installing.. #'
	echo '#################################################'

	# Download and install Elasticsearch public sign in key
	wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

	# Add repository.
	echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

	# Update Apitute.
	sudo apt-get update

	# Install elastic-search
	sudo apt-get install elasticsearch

	# Set Elasticsearch to run on startup
	sudo update-rc.d elasticsearch defaults 95 10

	printf '%s\n# Do not block the requests from Host Machine: %s\nnetwork.host: 192.168.10.10%s\n' >> /etc/elasticsearch/elasticsearch.yml

	# Start elasticsearch server
	sudo /etc/init.d/elasticsearch start
fi
