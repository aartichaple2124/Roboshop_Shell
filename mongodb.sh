cp mongodb.sh /etc/yum.repos.d/mongo.repo
sudo dnf clean all
sudo dnf makecache
sudo dnf install -y mongodb-org

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
systemctl enable mongod
systemctl start mongod
systemctl restart mongod