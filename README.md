# Hosting a Static Website on AWS S3 using Terraform
hosted a real HTML website fully using Terraform
```
Cloud Infra (S3 + IAM)
Frontend Website (HTML)
Terraform (Infra-as-Code)
```

# Project structure
```
s3-static-site/
├── website/          
│   ├── index.html
│   ├── styles.css
│   ├── app.js
│   └── logo.png
├── main.tf           
├── variables.tf
└── outputs.tf
```

# 1. Setting up all the files

# 2. Initialize terraform
```
terraform init
```

# 3. Apply Terraform
```
terraform apply
```

# 4. After successful terraform apply upload website files to S3
```
aws s3 sync website/ s3://s3-web-tf-bug24-20250804
```

# 5. Open Your Website
After terraform apply, you'll see an output like
```
website_url = http://s3-web-tf-bug24-20250804.s3-website-us-east-1.amazonaws.com
```

**Open this URL in your browser!**- website!!


**Note**-
**Destroying terraform**

Manually Empty the Bucket Before Deletion
```
aws s3 rm s3://s3-web-tf-bug24-20250804 --recursive
```
