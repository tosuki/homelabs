# Docker Containers Repository

This repository contains a collection of Dockerized services for development and remote access. Each service is defined in its own directory and can be managed using Docker Compose.

## Prerequisites

Before you begin, ensure you have the following installed:

*   [Docker](https://docs.docker.com/get-docker/)
*   [Docker Compose](https://docs.docker.com/compose/install/)

## Services

### PostgreSQL Development Environment

The `postgresql-dev` directory contains a Docker Compose setup for a PostgreSQL database and a pgAdmin web interface. This is ideal for local development and testing.

**Features:**

*   PostgreSQL database container (`postgres_dev`)
*   pgAdmin 4 container (`pgadmin4_dev`) for database management

**Usage:**

1.  Navigate to the `postgresql-dev` directory:
    ```bash
    cd postgresql-dev
    ```
2.  Start the services:
    ```bash
    docker-compose up -d
    ```

**Access Credentials:**

*   **PostgreSQL:**
    *   **Host:** `localhost`
    *   **Port:** `5432`
    *   **Username:** `postgres`
    *   **Password:** `root`
*   **pgAdmin:**
    *   **URL:** [http://localhost:5050](http://localhost:5050)
    *   **Email:** `homelabs@homelabs.com`
    *   **Password:** `root`

### Public SSH Server

The `public-ssh` directory contains a Dockerfile and Docker Compose setup for a public-facing SSH server. This can be used for remote access to a containerized environment.

**Features:**

*   SSH server based on Ubuntu
*   Root access enabled

**Usage:**

1.  Navigate to the `public-ssh` directory:
    ```bash
    cd public-ssh
    ```
2.  Build and start the service:
    ```bash
    docker-compose up -d --build
    ```

**Access Credentials:**

*   **SSH:**
    *   **Host:** Your server's IP address or `localhost`
    *   **Port:** The port mapped by Docker Compose (run `docker-compose ps` to find the port)
    *   **Username:** `root`
    *   **Password:** `public`

### Jellyfin Media Server

The `jellyfin` directory contains a Docker Compose setup for Jellyfin, a free software media system that gives you total control over your media.

**Features:**

*   Jellyfin media server container
*   Web interface for media management and streaming

**Usage:**

1.  Navigate to the `jellyfin` directory:
    ```bash
    cd jellyfin
    ```
2.  Start the service:
    ```bash
    docker-compose up -d
    ```

**Access Credentials:**

*   **Jellyfin Web UI:**
    *   **URL:** [http://localhost:8096](http://localhost:8096) (default port, check `docker-compose.yml` for actual mapped port)
    *   Follow the on-screen instructions for initial setup, including creating an admin user.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

### Tools

The `tools` directory contains a collection of utilities for managing the homelab environment, primarily for Windows systems.

**Contents:**

*   `homelabs.bat`: A batch script for managing various homelab tasks.

*   `pkill.bat`: A batch script for terminating processes.
