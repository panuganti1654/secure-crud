# Secure CRUD DevOps Project

## 📌 Project Overview

This project demonstrates containerizing a Node.js CRUD application using Docker and Docker Compose with MongoDB.
It follows DevOps best practices like container networking, non-root user security, and deployment scripting.

---

## 🏗️ Tech Stack

* Node.js
* Express
* MongoDB
* Docker
* Docker Compose
* Nginx (reverse proxy)

---

## 📂 Project Structure

```
secure-crud/
 ├── src/                # Node.js app source code
 ├── nginx/              # Nginx configuration
 ├── Dockerfile          # App container config
 ├── docker-compose.yml  # Multi-container setup
 ├── deploy.sh           # Deployment script
 └── .github/workflows   # CI pipeline
```

---

## 🚀 How to Run

### Using Docker Compose

```bash
docker compose up --build
```

App will be available at 👉 http://localhost

---

## 🔐 Security Implementations

* Non-root user inside container
* Container network isolation
* Environment-based configuration

---

## 🧪 Verification

Check running containers:

```bash
docker ps
```

Check logs:

```bash
docker logs securecrud-app
```

---

## 📦 Deployment

Run deployment script:

```bash
bash deploy.sh
```

---

## 👨‍💻 Author

Panuganti Sriniketh
