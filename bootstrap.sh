
mv /etc/localtime /etc/localtime.bak
ln -fs /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime

sudo yum update

sudo yum search epel-release
sudo yum info epel-release
sudo yum install -y epel-release

sudo rpm -qa | grep epel
sudo yum repolist

sudo yum --disablerepo="*" --enablerepo="epel" list available

sudo yum install -y ansible
sudo yum install -y tree

# sudo systemctl start nginx

#sudo firewall-cmd --permanent --zone=public --add-service=http 
#sudo firewall-cmd --permanent --zone=public --add-service=https
#sudo firewall-cmd --reload

# sudo systemctl enable nginx

ip addr

echo "provisioning completed " > provision.txt
date >> provision.txt
cat /etc/redhat-release >> provision.txt
python -V 2>&1 | tee -a provision.txt