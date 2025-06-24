
#!/bin/bash

cd terraform
terraform init
terraform apply -auto-approve
terraform output -json > ../ansible/inventory.json
