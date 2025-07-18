# Cloud Resume Challenge: Frontend Website

This repository hosts the **static resume** for the Cloud Resume Challenge. It uses:

- A **private S3 bucket**  
- A **CloudFront** distribution with Origin Access Control  
- A GitHub Actions pipeline that ties into the backend API

When deployed, your browser sees my resume at **https://hybridmulti.cloud** and the page shows a live **visitor count** fetched from the backend API.

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
+----------+-----------+       +----------+-----------+
           │                              ▲
           │                              │
           ▼                              │
  +----------------------+               │
  |  Backend API        | ───────────────┘
  | (API GW + Lambda)   |   visitor count
  +----------------------+
(Redraw in draw.io as needed.)

Prerequisites
AWS credentials (with S3 & CloudFront rights) in GitHub Secrets:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

AWS_REGION

A Personal Access Token (repo, workflow scopes) as PERSONAL_ACCESS_TOKEN

The backend must be deployed first so its artifacts exist

Deploying
Clone this repo

bash
git clone https://github.com/hybridmulticloud/resume-api-frontend.git
cd resume-api-frontend
Ensure GitHub Secrets & Repository Variables are set:

AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION

S3_BUCKET_NAME = hybridmulti.cloud

PERSONAL_ACCESS_TOKEN

Push to main or run the workflow manually.

Watch the Actions log: it will

Fetch api-url & cloudfront-id from the backend

Substitute the API URL into index.html

Sync to S3 and invalidate the CloudFront distribution

Local Preview
bash
npm install -g serve
serve public/
Then open http://localhost:5000 and set:

js
window.API_URL = "https://<your-api-gateway>/UpdateVisitorCount"
This static site displays my resume and real-time visitor count at https://hybridmulti.cloud as part of the Cloud Resume Challenge!
