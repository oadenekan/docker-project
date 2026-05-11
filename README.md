# Dockerised Java Application with MySQL and phpMyAdmin

## Overview

This project demonstrates how to containerise and orchestrate a multi-service Java application stack using Docker Compose.

The application consists of:
- A Java Spring Boot backend application
- MySQL database
- phpMyAdmin database management UI

The stack was configured using environment variables, Docker networking, persistent volumes, health checks, and service dependencies to simulate a production-style deployment workflow.

---

## Technologies Used

- Docker
- Docker Compose
- Java
- Spring Boot
- MySQL
- phpMyAdmin
- Linux

---

## Features

- Multi-container application setup
- Containerised Java application
- Persistent MySQL storage using Docker volumes
- Environment variable configuration with `.env`
- Internal Docker networking between services
- MySQL health checks and startup dependencies
- Database management using phpMyAdmin
- Docker image pushed to private Docker Hub repository

---

## Project Architecture

```text
Browser
   |
   |--> Java Spring Boot Application (Container)
              |
              |--> MySQL Database (Container)
                          |
                          |--> Persistent Docker Volume

phpMyAdmin (Container)
        |
        |--> Connects to MySQL
```

---

## Project Structure

```text
.
├── Dockerfile
├── docker-compose.yaml
├── .env.example
├── README.md
└── src/
```

---

## Environment Variables

Create a `.env` file in the project root:

```env
DB_USER=<your-db-user>
DB_PWD=<your-db-password>
DB_SERVER=mysql
DB_NAME=team_member_projects

MYSQL_ROOT_PASSWORD=<your-root-password>

PMA_HOST=mysql
PMA_PORT=3306
```

> Do not commit your `.env` file to version control.  
> Use `.env.example` for sharing required environment variable names safely.

---

## Best Practice Structure

You should have the following files configured:

### `.gitignore`

```text
.env
```

### `.env.example`

```env
DB_USER=
DB_PWD=
DB_SERVER=mysql
DB_NAME=team_member_projects

MYSQL_ROOT_PASSWORD=

PMA_HOST=mysql
PMA_PORT=3306
```

---

## Running the Application

### 1. Clone the repository

```bash
git clone git@github.com:oadenekan/docker-project.git
cd docker-project
```

### 2. Start the containers

```bash
docker compose up
```

### 3. Access the services

Application:

```text
http://localhost:8080
```

phpMyAdmin:

```text
http://localhost:8083
```

---

## Docker Compose Services

### Java Application

- Runs Spring Boot application
- Exposed on port 8080

### MySQL

- Runs MySQL database
- Persistent storage configured with Docker volumes
- Includes container health checks

### phpMyAdmin

- Database management UI
- Connected internally to MySQL container

---

## Troubleshooting

### Common Issue: Communications link failure

If the application fails to connect to MySQL:

- Ensure the MySQL container is healthy
- Verify environment variables are correctly loaded
- Confirm `DB_SERVER=mysql`

Remove old volumes if necessary:

```bash
docker compose down -v
```

Then restart:

```bash
docker compose up
```

---

## Future Improvements

- CI/CD pipeline integration with Jenkins
- Deploy to remote Linux server
- Push images to Nexus repository
- Kubernetes deployment manifests
- Reverse proxy with Nginx
- HTTPS configuration

---

## Learning Outcomes

This project helped me gain hands-on experience with:

- Docker containerisation
- Multi-container orchestration
- Service networking
- Health checks and dependencies
- Environment variable management
- Debugging container communication issues
- Persistent storage with Docker volumes
