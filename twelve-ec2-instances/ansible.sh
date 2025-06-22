#!/bin/bash

# Install Ansible and Python 3.9
dnf install ansible python3.9 -y

# Install pip for Python 3.9
python3.9 -m ensurepip --upgrade
python3.9 -m pip install --upgrade pip

# Clone the Git repository
cd /tmp
git clone https://github.com/Lingaiahthammisetti/4.10.expense-ansible-forks-dynamicInventory-ec2-logs.git
cd 4.10.expense-ansible-forks-dynamicInventory-ec2-logs

# Install required Python packages for AWS dynamic inventory
python3.9 -m pip install boto3 botocore

# Run Ansible with the dynamic inventory
ansible-inventory -i aws_ec2.yaml --graph
ansible-playbook -i aws_ec2.yaml -e ansible_user=ec2-user -e ansible_password=DevOps321 dynamic.yaml












# #!/bin/bash
# dnf install ansible -y
# dnf install python3.9 -y
# cd /tmp
# git clone https://github.com/Lingaiahthammisetti/4.10.expense-ansible-forks-dynamicInventory-ec2-logs.git
# cd 4.10.expense-ansible-forks-dynamicInventory-ec2-logs

# pip3.9 install boto3 botocore
# ansible-inventory -i aws_ec2.yaml --graph
# ansible-playbook -i aws_ec2.yaml -e ansible_user=ec2-user -e ansible_password=DevOps321 dynamic.yaml
