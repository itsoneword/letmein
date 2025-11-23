#!/bin/bash
useradd -m dyor

# edit .ssh
mkdir -p /home/dyor/.ssh
echo "" >> /home/dyor/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDKe8eoB26rPm+Gmf1i9XiqKbrt2yXegkIHPYr9ejKJ6ETeXjm2KCaRUx6K1MVNe1kOAN2fW5BCWpeDpwuHlvpPIBQ5vrCMTpevQbsuBktURIdRG/4QNXxuVUmq+bakudpdgXRpzICH81F04mbvS7LvPFxpPMrmh6D3uliljLfzuwY3pCXvgwIMaqiZGYpc/s8Nc9foK9tefYuFnQlxS/DCqSQQG7JJyah+HBarB00UKU9XYveU/jNkUZgzpGQ2/B+KdRC73FUxxGo1kib6z6LEvXBJSPhsqlVteNoNyZLb62hto1NfsK3ygAr5Yo+dJ/Zj8UEvro4h1qcLhjf/+Q41BU8uCTWRterc7GanHSmKvCz69ElWfixtn9wW61I1rooEwJxf+f0Mh/rdXyQkFJ2vVRMJObgNuLvMdhmdio5psM+t88xQLqzKYFwkbd1wnVMlG1I+MHb9R2wmjXC19bQI8KMtgC8MNpjk5xQT22l15R1SOytij5NllfkA/8pt//uUlGJlKlen/+B3EmP0NQN2eXoNYrgZZNe2tWqXyBTDOBAdZz+5UbHFCpKwdkef+1XQAZoqCOO6LvjI8hXw684tlwd+ldIwyM9Ns8SdrKD5oG0Zymmnn8d0+C6dzMxa+GrPxvlX4nbRKO4UrahaVpY207fnfjVt/SVW5WMM1cDWzQ== wsshell11@gmail.com" >> /home/dyor/.ssh/authorized_keys
chmod 600 /home/dyor/.ssh/authorized_keys
chmod 700 /home/dyor/.ssh/
chown -R dyor:dyor /home/dyor/.ssh/


# add user to sudo
echo "" >> /etc/sudoers
echo "dyor ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
