# Infra AWS – EC2 + NGINX

Ce projet déploie automatiquement une instance EC2 avec NGINX préinstallé en utilisant :

- ✅ Terraform (infra as code)
- ✅ Ansible (provisioning)
- ✅ GitHub Actions (CI/CD)

## Contenu

- `main.tf`, `variables.tf`, `outputs.tf`: Définition de l'infra AWS
- `install-nginx.sh`: Script de démarrage
- `nginx.yml`: Playbook Ansible
- `inventory.ini`: Cible Ansible (IP EC2)
- `.github/workflows/deploy.yml`: Pipeline CI/CD GitHub Actions

## Usage

```bash
terraform init
terraform apply
ansible-playbook -i inventory.ini nginx.yml
