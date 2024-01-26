Anleitung fuer Jenkins

S3 Bucket erstellen
Terraform backendfile den namen anpassen

dynamodb erstellen

aws dynamodb create-table \
         --region eu-central-1 \
         --table-name terraform-lock \
         --attribute-definitions AttributeName=LockID,AttributeType=S \
         --key-schema AttributeName=LockID,KeyType=HASH \
         --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

tablename in backend.tf checken

dann der jenkins-agent ec2 role zuweisen

S3 full access(kann man auch noch mehr einschraenken)
ressouce nur den einen bucket sonst kann er alle s3 bearbeiten(schlecht)

dynamodb 
selbe wie bei s3

und ec2 full access

webhook in github einrichten

scm trigger nicht vergessen

push code,

have fun

terraform destroy vorher im jenkins file auskommentieren mit // sonst wirds gleich im anschluss wieder kaputt gemacht

ps. wenn ihr das ganze dann wieder kaputt machen wollt einfach Jenkinsfile anpassen
(statt terraform apply einfach terraform destroy)

