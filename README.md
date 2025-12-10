# Yawiz - DevOps Demo Project

Professional DevOps demonstration showcasing automated deployment pipeline with Docker, Terraform, and Ansible.

## 🏗️ Architecture

- **Frontend**: Modern responsive website with HTML5, CSS3, JavaScript
- **Containerization**: Docker with nginx
- **Infrastructure**: AWS VPC with 2 EC2 instances (Multi-AZ)
- **Automation**: Terraform + Ansible + GitHub Actions CI/CD

## 🚀 Quick Start

### Prerequisites
- AWS CLI configured
- Terraform installed
- Ansible installed
- SSH key pair "serverweb" in AWS

### Deployment

1. **Infrastructure**:
```bash
cd terraform
terraform init
terraform apply
```

2. **Application**:
```bash
ansible-playbook -i hosts deploy_with_ansible.yml
```

## 🔄 CI/CD Pipeline

Automated deployment on every push to main branch using GitHub Actions.

### Required Secrets:
- `SSH_PRIVATE_KEY`: Your serverweb.pem private key content
- `SERVER_1_IP`: First EC2 instance public IP
- `SERVER_2_IP`: Second EC2 instance public IP

## 📁 Project Structure

```
yawiz/
├── .github/workflows/    # CI/CD pipeline
├── terraform/           # Infrastructure as Code
├── index.html          # Main website
├── style.css           # Styling
├── script.js           # JavaScript
├── Dockerfile          # Container configuration
├── deploy_with_ansible.yml # Deployment automation
└── hosts              # Ansible inventory
```

## 🌐 Live Demo

After deployment, access your application at:
- Server 1: http://[SERVER_1_IP]
- Server 2: http://[SERVER_2_IP]

## 👨‍💻 Author

**Mamadou A. Kebe** - DevOps & Cloud Engineer