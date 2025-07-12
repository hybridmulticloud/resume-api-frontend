KEREM KIRCI – Hybrid Cloud Resume Website
🌐 hybridmulti.cloud
A production-grade, serverless resume site deployed with Terraform, GitHub Actions, and AWS Cloud services.

🚀 Overview
This project is my public-facing hybrid cloud resume and portfolio site, built as part of the Cloud Resume Challenge. It demonstrates hands-on skills in cloud infrastructure, serverless architecture, and DevOps automation using modern best practices.

The live site is available at:
➡️ https://hybridmulti.cloud

🧱 Architecture
Component	Service
Frontend Hosting	Amazon S3 + CloudFront CDN
Backend API	AWS Lambda + API Gateway
Database	Amazon DynamoDB (Visitor Counter)
Infrastructure	Terraform IaC
CI/CD	GitHub Actions
Monitoring	AWS CloudWatch Logs, Alarms, Synthetics

📁 Project Structure
resume-api-frontend/
├── public/                # 🚀 Static HTML/CSS for deployment (index.html, style.css)
├── infra/                 # 🛠️ Terraform code for AWS infrastructure
│   └── main.tf
├── .github/workflows/     # 🤖 CI/CD GitHub Actions
│   └── deploy.yml
├── LICENSE                # 📄 Project license 
├── .gitignore
└── README.md              # 📄 You're here

⚙️ Technologies Used
AWS S3 + CloudFront – Static hosting + CDN
API Gateway + Lambda (Python) – Serverless visitor count API
DynamoDB – NoSQL counter storage
Terraform – Infrastructure as Code
GitHub Actions – Automated deployment pipeline
CloudWatch – Monitoring, alarms, logging
(Planned): Multi-region failover, Route 53, public uptime dashboard

🛡️ Monitoring & Logging
✅ CloudWatch Logs for Lambda invocations & errors
✅ CloudWatch Alarms for function errors and latency
✅ DynamoDB metrics for throttling & performance
✅ CloudWatch Synthetics uptime checker for hybridmulti.cloud


📦 Deployment Pipeline
On every main branch push:
Terraform is initialized and applied (infra/)
public/ assets are synced to S3 bucket
Cache invalidation for CloudFront
Fully automated via deploy.yml in GitHub Actions.


🔒 Security Notes
S3 bucket access is locked via CloudFront origin access control
IAM roles follow the least privilege principle
API Gateway is restricted to specific paths
Lambda logs all requests and errors for auditability

🧪 In Progress / TODO
 Multi-region DynamoDB (Global Tables)
 Route 53 DNS failover for high availability
