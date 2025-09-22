Terraform AWS S3 Static Website Hosting
Overview
This project demonstrates the use of Terraform to provision and host a static website on Amazon Web Services (AWS) S3. It's a foundational Infrastructure as Code (IaC) project that showcases key DevOps skills such as automation, cloud resource management, and state management.

The website is configured with a public access policy, a custom index.html file, and an error.html page for handling "404 Not Found" errors.

Architecture
The project's architecture is straightforward and follows a standard pattern for static website hosting on AWS:

Local Machine: The user's machine, where Terraform is executed.

Terraform: Reads the configuration files and communicates with the AWS API.

AWS S3: A bucket is created and configured for static website hosting, serving the HTML files to end-users.

Technologies Used
Terraform: For provisioning and managing all AWS resources.

AWS S3: The primary service for storing and serving the static website.

HTML: The content of the static website (index.html and error.html).

Prerequisites
Before deploying this project, ensure you have the following installed and configured:

AWS Account: An active AWS account is required.

AWS CLI: Configured with valid credentials to allow Terraform to authenticate with your AWS account.

Terraform CLI: Installed and ready to execute commands.

HTML Files: You must have index.html and error.html files in the same directory as your Terraform code.

Deployment
Follow these steps to deploy the static website:

Clone the Repository:

git clone [https://github.com/MahouTn/Terraform-AWS-S3-Static-Website-Hosting.git](https://github.com/MahouTn/Terraform-AWS-S3-Static-Website-Hosting.git)
cd Terraform-AWS-S3-Static-Website-Hosting

Initialize Terraform:
This command downloads the necessary AWS provider plugins.

terraform init

Apply the Configuration:
This command will create all the AWS resources defined in the configuration files.

terraform apply

Get the Website URL:
After a successful terraform apply, the output will provide the public URL of your new website.

terraform output "website_endpoint"

Cleanup
To avoid incurring any costs, you can destroy all the created resources with a single command.

terraform destroy

This will safely remove the S3 bucket and all related configurations.
