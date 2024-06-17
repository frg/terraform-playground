# Variable Map Test

Spin up the container
```bash
docker-compose up --build -d
```

Spin up the container
```bash
docker exec -it $(docker-compose ps -q terraform) /bin/bash
```

Initialize Terraform
```bash
terraform init
```

Test the mapping of the variable without providing an override
```bash
terraform apply -auto-approve
```

Review the output in `output.txt`
```bash
cat output.txt
```

Test the mapping of the variable while providing an override
```bash
terraform apply -var-file="variables.tfvars" -auto-approve
```

Review the output in `output.txt`
```bash
cat output.txt
```

Cleanup
```bash
terraform destroy -auto-approve
docker-compose down
```