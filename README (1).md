# 🌐 Hybrid Cloud Resume – Frontend (S3 + CloudFront)

This is the frontend for my personal hybrid cloud resume:  
➡️ **[https://hybridmulti.cloud](https://hybridmulti.cloud)**

It is built with clean HTML/CSS, served as a static website using **Amazon S3**, and distributed globally via **CloudFront CDN**.  
This frontend interacts with a serverless backend powered by **AWS Lambda + DynamoDB**, which tracks and displays a live visitor count.

---

## 🎯 Key Features

- ✅ Responsive, clean HTML + CSS
- ✅ Sections for summary, skills, certifications, experience, and projects
- ✅ Dynamic visitor counter powered by Lambda API
- ✅ Deployed via GitHub Actions (CI/CD)
- ✅ Hosted with S3 + CloudFront + custom domain

---

## 🧱 Tech Stack

| Layer       | Technology         |
|-------------|--------------------|
| Hosting     | AWS S3 (static site) |
| CDN         | AWS CloudFront     |
| DNS         | Route 53 (via domain hybridmulti.cloud) |
| Deployments | GitHub Actions     |
| Interactivity | JavaScript fetch to Lambda API |
| Backend     | [resume-api (Lambda/API)](https://github.com/hybridmulticloud/resume-api)

---

## 🚀 Deployment Flow

1. HTML and CSS files live in `/public/`
2. GitHub Actions automatically sync `/public` to S3 on push
3. CloudFront serves the site from S3
4. A JS script on page load calls the `/UpdateVisitorCount` API endpoint:
```js
fetch("https://<api>.execute-api.<region>.amazonaws.com/UpdateVisitorCount", {
  method: "POST"
});
```

---

## 📁 Project Structure

```
resume-api-frontend/
├── public/
│   ├── index.html       # Main resume page
│   ├── style.css        # Custom styles
├── .github/workflows/
│   └── deploy.yml       # GitHub Actions to sync with S3
└── README.md
```

---

## 🧠 What I Learned

- How to build and host static sites on S3 with custom domains
- Automating deployments with GitHub Actions
- Integrating frontend with AWS serverless APIs
- Applying infrastructure as code (via Terraform in backend)

---

## ✍️ Author

**Kerem Kirci** – Senior Technical Consultant | Cloud Architect  
🔗 [linkedin.com/in/kerem-kirci](https://linkedin.com/in/kerem-kirci)  
🌐 [https://hybridmulti.cloud](https://hybridmulti.cloud)

---
