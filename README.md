# 🚀 Automated Node.js CI/CD with GitHub Actions & Docker

This project demonstrates a complete CI/CD pipeline that automatically builds and pushes a Dockerized Node.js app to DockerHub using GitHub Actions.

## 📦 Tech Stack
- Node.js (Alpine image)
- Docker & DockerHub
- GitHub Actions CI/CD
- Git (Version Control)
- GitHub Secrets (for secure credentials)

## 📁 Project Structure
├── .github
│ └── workflows
│ └── main.yml # CI/CD workflow
├── app
│ └── index.js # Simple Node.js app
├── Dockerfile
└── README.md

---

## ⚙️ How CI/CD Works

Every time you push to the `main` branch:

1. GitHub Actions triggers.
2. Docker image is built using `Dockerfile`.
3. Image is pushed to [DockerHub](https://hub.docker.com/repository/docker/rajattheking/devops-node-ci).
4. Ready to deploy on any server using:

```bash
docker pull rajattheking/devops-node-ci:latest
docker run -d -p 3000:3000 rajattheking/devops-node-ci:latest

🛠️ Setup GitHub Secrets
Go to GitHub Repo → Settings → Secrets → Actions.

Add these two secrets:

DOCKER_USERNAME → your DockerHub username

DOCKER_PASSWORD → your DockerHub personal access token

🤯 Challenges Faced
❌ Login failed: Used wrong GitHub Secret key like RAJATTHEKING instead of DOCKER_USERNAME.

❌ Push access denied: Image tag was incorrect — used rajatpatra/... instead of rajattheking/....

❌ YAML syntax: Small formatting errors, incorrect indentation.

❌ Git conflicts: Faced rejection due to local commits ahead of remote.

✅ Fixed all with clear steps, testing locally, and Docker best practices.

🔍 How to Test Locally (Homelab Safe)
docker pull rajattheking/devops-node-ci:latest
docker run -d -p 3000:3000 rajattheking/devops-node-ci:latest
curl http://localhost:3000
