
# Steps to follow:

aws configure

aws s3 ls

pip3.9 install boto3 botocore
ansible-inventory -i aws_ec2.yaml --graph

ansible-playbook -i aws_ec2.yaml -e ansible_user=ec2-user -e ansible_password=DevOps321 dynamic.yaml