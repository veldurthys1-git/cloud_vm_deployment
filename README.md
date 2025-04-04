# 🌐 Virtual Machine Deployment on Cloud with Terraform

Automated deployment of Virtual Machines (VMs) on **AWS** and **Google Cloud Platform (GCP)** using **Terraform**, focusing on cloud networking, security, and Infrastructure as Code (IaC) best practices.

> ✅ This project automates cloud VM provisioning and is designed for easy learning and professional GitHub presentation.

---

## 📸 Project Structure

```
📦 cloud_vm_deployment
├── aws/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── gcp/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── .gitignore
├── LICENSE
└── README.md
```

---

## 🚀 Features

- ✅ Deploy EC2 instance on AWS
- ✅ Deploy VM instance on GCP
- ✅ Configure security groups / firewall rules
- ✅ SSH key-based access
- ✅ Outputs public IP addresses
- ✅ Infrastructure as Code (IaC) with Terraform
- ✅ Clean, reusable, and scalable code

---

## 🧩 Skills Gained

- Terraform automation
- AWS EC2 & security groups
- GCP Compute Engine & firewall rules
- Cloud networking & SSH access
- Infrastructure as Code (IaC)
- Multi-cloud provisioning (AWS & GCP)

---

## 🛠️ Technologies Used

- Terraform
- AWS (EC2)
- Google Cloud (GCP Compute Engine)
- Security Groups / Firewall Rules
- Infrastructure as Code (IaC)
- Visual Studio Code (recommended)

---

## ✅ Prerequisites

Before you begin, ensure you have the following installed:

### Install Terraform
- Download from: [Terraform Downloads](https://developer.hashicorp.com/terraform/downloads)
- Extract to a folder, e.g., `C:\terraform`
- Add to your system `PATH`:
  - Windows: Search for **Edit environment variables**, click **Path**, and add `C:\terraform`
- Verify installation:
  ```bash
  terraform -version
  ```

### Install AWS CLI (for AWS deployment)
- [AWS CLI Install Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- Configure:
  ```bash
  aws configure
  ```
- Enter your:
  - AWS Access Key ID
  - AWS Secret Access Key
  - Default region (example: `us-east-1`)

### Install Google Cloud SDK (for GCP deployment)
- [GCP SDK Install Guide](https://cloud.google.com/sdk/docs/install)
- Initialize:
  ```bash
  gcloud init
  ```
- Enable Compute Engine API:
  ```bash
  gcloud services enable compute.googleapis.com
  ```

---

## ⚙️ How to Run the Project

### Step 1: Clone the Repository

```bash
git clone https://github.com/your-username/cloud_vm_deployment.git
cd cloud_vm_deployment
```

### Step 2: Select Cloud Provider

- For **AWS**:
  ```bash
  cd aws
  ```

- For **GCP**:
  ```bash
  cd gcp
  ```

### Step 3: (Optional) Configure Variables

You can create a `terraform.tfvars` file in the respective directory.

**AWS Example `terraform.tfvars`:**
```hcl
aws_region = "us-east-1"
aws_ami = "ami-0c02fb55956c7d316"
instance_type = "t2.micro"
```

**GCP Example `terraform.tfvars`:**
```hcl
project_id = "your-gcp-project-id"
region = "us-central1"
zone = "us-central1-a"
machine_type = "e2-micro"
image = "debian-cloud/debian-11"
ssh_public_key_path = "/absolute/path/to/your/public/key.pub"
```

### Step 4: Initialize Terraform

```bash
terraform init
```

### Step 5: Validate Configuration (Optional but recommended)

```bash
terraform validate
```

### Step 6: Preview the Plan

```bash
terraform plan
```

### Step 7: Apply and Deploy 🚀

```bash
terraform apply
```

Type `yes` when prompted.

### Step 8: Access Your VM 🎉

Check the output in the terminal — it will show the **public IP address** of your VM.

Use this IP to SSH into your instance:
```bash
ssh ec2-user@<AWS_PUBLIC_IP> -i /path/to/your/private-key.pem
```
or
```bash
ssh user@<GCP_PUBLIC_IP> -i /path/to/your/private-key
```

### Step 9: Clean Up (To avoid charges!)

When you're done, always destroy resources:
```bash
terraform destroy
```

Type `yes` when prompted.

---

## 🌍 Deployment Options

- ✅ AWS EC2
- ✅ GCP Compute Engine
- ✅ Multi-cloud setup ready

> _Future scope:_ Azure integration, auto-scaling groups, and cloud-init provisioning!

---

## 🎯 Future Improvements

- Add Azure cloud integration
- Automate SSH key generation inside Terraform
- Provision multiple instances dynamically
- Add cloud-init to pre-install applications
- Setup remote state storage (S3 bucket / GCP bucket)
- Integrate GitHub Actions for CI/CD Terraform workflows

---

## 🤝 Contributing

Contributions are welcome!

1. Fork this repository
2. Create your feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request 🚀

---

## 📄 License

This project is licensed under the **MIT License** — feel free to use, modify, and distribute.

---

## 📫 Contact Me

- 📧 **Email:** [veldurthysaicharan5@gmail.com](mailto:veldurthysaicharan5@gmail.com)
- 💼 **LinkedIn:** [linkedin.com/in/veldurthy-saicharan](https://www.linkedin.com/in/veldurthy-saicharan)
- 📄 **Resume:** [View Resume](https://drive.google.com/file/d/1q1gtTQXHkjoPZuO7JXl2kg0_ym35Uu8N/view)

---

> Made with ❤️ by **Saicharan Veldurthy**
