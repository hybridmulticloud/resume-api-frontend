# 🧑‍💼 KEREM KIRCI – Hybrid Cloud Resume Website  
🌐 [https://hybridmulti.cloud](https://hybridmulti.cloud)

A production-grade, serverless resume site deployed with **Terraform**, **GitHub Actions**, and **AWS Cloud services**.  
This project is my public-facing **hybrid cloud resume and portfolio site**, built as part of the [Cloud Resume Challenge](https://cloudresumechallenge.dev/). It demonstrates hands-on skills in **cloud infrastructure**, **serverless architecture**, and **DevOps automation** using modern best practices.

---

## 🚀 Overview

This is my public-facing hybrid cloud resume and portfolio site. It showcases:

- Static frontend on S3 + CloudFront
- Serverless API via Lambda + API Gateway
- Visitor count stored in DynamoDB
- Infrastructure managed entirely with Terraform
- CI/CD pipelines with GitHub Actions
- Monitoring via CloudWatch Logs, Alarms, and Synthetics

➡️ **Live Site**: [https://hybridmulti.cloud](https://hybridmulti.cloud)

---

## 🧱 Architecture

| Component          | Technology                  |
|--------------------|-----------------------------|
| Frontend Hosting   | Amazon S3 + CloudFront CDN  |
| Backend API        | AWS Lambda + API Gateway    |
| Database           | Amazon DynamoDB (visitor count) |
| Infrastructure     | Terraform IaC               |
| CI/CD              | GitHub Actions              |
| Monitoring         | AWS CloudWatch Logs + Synthetics |

---

## 📁 Project Structure

```
resume-api-frontend/
├── public/                  # 🚀 Static frontend files
│   ├── index.html
│   ├── style.css
├── .github/                 # 🤖 GitHub Actions
│   └── workflows/
│       └── deploy.yml
├── .gitignore               # 🧼 Git exclusions
└── README.md                # 📄 You're here
```

---

## ⚙️ Technologies Used

- **AWS S3 + CloudFront** – Static resume hosting + CDN
- **AWS Lambda + API Gateway** – Visitor counter backend
- **Amazon DynamoDB** – Visitor count store
- **Terraform** – IaC for infrastructure provisioning
- **GitHub Actions** – CI/CD for deployment automation
- **CloudWatch** – Logs, metrics, and synthetic uptime monitoring
- *(Planned)*: Multi-region failover + Route 53 DNS

---

## 📦 Deployment Pipeline

Triggered automatically on commits to `main`:

1. Terraform infrastructure is applied (via backend repo)
2. Static frontend (`public/`) is synced to S3
3. CloudFront distribution is refreshed (optional)

Everything is automated via `.github/workflows/deploy.yml`.

---

## 🛡️ Monitoring & Logging

- ✅ **CloudWatch Logs** for Lambda execution and errors
- ✅ **CloudWatch Alarms** for error and latency detection
- ✅ **DynamoDB metrics** for read/write capacity
- ✅ **CloudWatch Synthetics** checks for frontend availability

---

## 🔒 Security Notes

- S3 is private with access controlled by CloudFront
- IAM follows **least privilege** principle
- Lambda environment variable for `TABLE_NAME`
- CORS headers set to `https://hybridmulti.cloud`
- No hardcoded secrets; credentials passed securely via GitHub secrets

---

## 🧪 In Progress / TODO

- [ ] Add DynamoDB Global Tables (multi-region HA)
- [ ] Add Route 53 DNS failover
- [ ] Improve performance score via Lighthouse audit

---

## ✍️ About Me

I'm **Kerem Kirci**, a Senior Technical Consultant and Hybrid Cloud Architect with over 15 years of experience designing and delivering enterprise-grade infrastructure across the UK and EMEA.

This site is both a resume and a live case study of my cloud architecture, DevOps, and infrastructure-as-code capabilities.

- 📬 Email: [kerem@hybridmulti.cloud](mailto:kerem@hybridmulti.cloud)  
- 🔗 LinkedIn: [linkedin.com/in/kerem-kirci](https://linkedin.com/in/kerem-kirci)  
- 💻 GitHub: [github.com/hybridmulticloud](https://github.com/hybridmulticloud)
