#! /bin/bash
sudo yum install java-1.8.0-openjdk-devel
sudo yum install git -y
sudo yum install maven -y

if [ -d "addressbook" ]
then
    echo "Repository is already cloned and exist"
    cd /home/ec2-user/addressbook
    git pull origin demo-practice
else
git clone https://github.com/rakash06/addressbook.git
fi

cd /home/ec2-user/addressbook
mvn package