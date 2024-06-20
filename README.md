# SCCT Development Environment
A proof of concept for a development environment for students to provide a common cross-platform setup for students working either on university machines or on their own computers.

Once setup students should have a core development container (Ubuntu) supported by:
* mysql server (mariadb) with configured user and example databases
* mongodb server
* visual mysql administration tool (phpmyadmin)
* visual mongodb administration tool (mongo express)

So far tested on:
* Windows (staff build only currently)
* macOS (non-UWE build)
* linux (Fedora)

## Setup and installation
### Prerequisites
* [Visual Studio Code](https://code.visualstudio.com/)
* [Docker](https://www.docker.com/products/docker-desktop/) (desktop version recommended)

### Installation
* Install prerequisite software
* Download SCCT Development Environment
* Open environment in Visual Studio Code and choose option 'Open in Container' when prompted
* Wait while containers are downloaded and initialised

### Usage
* Once containers are ready Visual Studio Code should drop you into the Ubuntu container with the file explorer in your home directory
* Use Visual Studio Code as normal -- create new folders for workspaces and File > Open Folder to use the workspace
* Terminal > New Terminal to interact with the container
* Ports are already forward to allow access to:
  * [PHPMyAdmin](http://localhost:8080) - on port 8080
  * [Mongo Express](http://localhost:8081) - on port 8081

#### Ubuntu (core development container)
Python 3.12 (with pip and virtualenv packages) and git are included in the core container -- need to work out what other packages we should include by default. Currently the container is locked down but we could setup scct to be able to run commands with `sudo` to allow them to install anything they want into the container.

#### MySQL
A user is provisioned on setup:
* Username: scct
* Password: scctdev

This user has full permissions to create/modify/drop any database starting with `scct_`. An example database (sakila) is also created and permissions set.

The server socket is shared between containers and mysql-client is installed so mysql can be used in terminal: `mysql -u scct -p` with password `scctdev`.

To connect to the server using python etc. hostname is just `mysql` with username and password as above.

#### MongoDB
WIP regarding provisioning users and example DBs -- not sure what is needed for students currently