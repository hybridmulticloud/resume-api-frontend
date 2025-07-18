# Cloud Resume Challenge: Frontend Website

This repository hosts the **static resume** for the Cloud Resume Challenge. It uses:

- A **private S3 bucket**
- A **CloudFront** distribution with Origin Access Control
- A GitHub Actions pipeline that ties into the backend API

🏠 Live URL: **https://hybridmulti.cloud**

---

## How It Links to the Backend

This frontend workflow downloads two artifacts from the [backend repo](https://github.com/hybridmulticloud/resume-api-backend):

1. **`api-url`** → feeds into the HTML so the page can call the visitor-count API
2. **`cloudfront-id`** → used to invalidate the CloudFront cache after deployment

---

## Architecture

```plaintext
   Visitor’s Browser
         │
         ▼
+----------------------+       +----------------------+
|   CloudFront CDN     | ◄──── |   S3 Bucket (OAC)    |
| hybridmulti.cloud    |       | hybridmulti.cloud    |
+----------------------+       +----------------------+
         │
         ▼
Backend API: Lambda + API Gateway + DynamoDB (see backend repo)
```

---

## CI/CD with GitHub Actions

Deployment is fully automated via `.github/workflows/deploy-frontend.yml`.

Steps:
1. Inject backend API URL into `index.tmpl.html`
2. Upload static files to S3 bucket
3. Invalidate CloudFront cache using the distribution ID

You **do not need to deploy manually** — all changes are picked up from Git commits.

---

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for step-by-step guide.
