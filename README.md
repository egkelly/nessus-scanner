# Nessus Scanner
Install and configure local nessus instance

# Scaner Server docker-compose files

This repository provides a docker-compose file that enables you to run a local instance of the Tenable Nessus Server.

## Prerequisites

To use these files, you must first have the following installed:

- [Docker](https://docs.docker.com/engine/installation/)
- [docker-compose](https://docs.docker.com/compose/install/)

## How to start locally

The following steps will run a local instance of the Temporal Server using the default configuration file (`docker-compose.yml`):

1. Clone this repository.
2. Change directory into the root of the project.
3. Edit "environment" block to include your nessus username, password, and token
3. Run the `docker-compose up` command.

```bash
git clone https://github.com/egkelly/nessus-scanner.git
cd  nessus-scanner
docker-compose up -d
```

After the Server has started, you can open the Nessus Scanner in your browser: [http://localhost:8834](http://localhost:8834).
It will take several minutes to initialize the server plugins.
