# Conditional Configuration PoC

A PoC exploring the ability to exclude configuration values which are not set.

Spin up the container
```bash
docker-compose up --build -d
```

Open a shell in the container
```bash
docker exec -it $(docker-compose ps -q terraform) /bin/bash
```

Initialize Terraform
```bash
terraform init
```

Test the mapping of the variable while providing an override
```bash
terraform plan -var-file="variables.tfvars"
```

Cleanup
```bash
terraform destroy -auto-approve
docker-compose down
```