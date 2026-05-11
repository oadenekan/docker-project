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
