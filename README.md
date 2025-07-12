# 🧑‍💼 KEREM KIRCI – Hybrid Cloud Resume Website  
[🌐 hybridmulti.cloud](https://hybridmulti.cloud)  
A production-grade, serverless resume site deployed with Terraform, GitHub Actions, and AWS Cloud services.

---

## 🚀 Overview

This project is my public-facing **hybrid cloud resume and portfolio site**, built as part of the [Cloud Resume Challenge](https://cloudresumechallenge.dev/). It demonstrates hands-on skills in **cloud infrastructure**, **serverless architecture**, and **DevOps automation** using modern best practices.

The live site is available at:  
➡️ [https://hybridmulti.cloud](https://hybridmulti.cloud)

---

## 🧱 Architecture

| Component          | Service                        |
|--------------------|--------------------------------|
| Frontend Hosting   | Amazon S3 + CloudFront CDN     |
| Backend API        | AWS Lambda + API Gateway       |
| Database           | Amazon DynamoDB (Visitor Counter) |
| Infrastructure     | Terraform IaC                  |
| CI/CD              | GitHub Actions                 |
| Monitoring         | AWS CloudWatch Logs, Alarms, Synthetics |

---

## 📁 Project Structure

```
resume-api-frontend/
├── public/                  # 🚀 Static frontend files (for S3)
│   ├── index.html
│   ├── style.css
├── infra/                   # 🛠️ Terraform infrastructure code
│   └── main.tf
├── .github/                 # 🤖 GitHub Actions CI/CD
│   └── workflows/
│       └── deploy.yml
├── .gitignore               # 🧼 Clean up tracked files
└── README.md                # 📄 This file
```

---

## ⚙️ Technologies Used

- **AWS S3 + CloudFront** – Static hosting + CDN  
- **API Gateway + Lambda (Python)** – Serverless visitor count API  
- **DynamoDB** – NoSQL counter storage  
- **Terraform** – Infrastructure as Code  
- **GitHub Actions** – Automated deployment pipeline  
- **CloudWatch** – Monitoring, alarms, logging  
- *(Planned)*: Multi-region failover, Route 53, public uptime dashboard

---

## 🛡️ Monitoring & Logging

- ✅ CloudWatch Logs for Lambda invocations & errors  
- ✅ CloudWatch Alarms for function errors and latency  
- ✅ DynamoDB metrics for throttling & performance  
- ✅ CloudWatch Synthetics uptime checker for `hybridmulti.cloud`  
- *(Optional)* Public status via UptimeRobot or BetterUptime

---

## 📦 Deployment Pipeline

On every `main` branch push:
1. Terraform is initialized and applied (`infra/`)
2. `public/` assets are synced to the S3 bucket
3. (Optional) CloudFront cache invalidated

> Fully automated via `deploy.yml` in GitHub Actions.

---

## 🔒 Security Notes

- S3 bucket access is locked via CloudFront origin access control  
- IAM roles follow the least privilege principle  
- API Gateway is restricted to specific paths  
- Lambda logs all requests and errors for auditability

---

## 🧪 In Progress / TODO

- [ ] Multi-region DynamoDB (Global Tables)  
- [ ] Route 53 DNS failover for high availability  
- [ ] HTML/CSS minification in CI pipeline  
- [ ] Public status page integration (UptimeRobot)

---

## 🙋‍♂️ About Me

I’m Kerem Kirci, a **Senior Technical Consultant and Hybrid Cloud Architect** with 15+ years of experience across UK and international markets.  
This site serves as both a resume and a real-world demonstration of my cloud engineering and infrastructure-as-code capabilities.

📬 [kerem@hybridmulti.cloud](mailto:kerem@hybridmulti.cloud)  
🔗 [linkedin.com/in/kerem-kirci](https://linkedin.com/in/kerem-kirci)  
💻 [github.com/hybridmulticloud](https://github.com/hybridmulticloud)
