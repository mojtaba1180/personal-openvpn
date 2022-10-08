
CentOS OpenVpn server

`
cd /tmp/ && \
yum install git -y && \
git clone https://github.com/mojtaba1180/personal-openvpn.git && \
cd personal-openvpn/ && \
sed -i -e 's/\r$//' centos7.sh && \
chmod 755 centos7.sh &&\
./centos7.sh 
`

Next a create user: 

`
useradd [username]
passwd [username]
`
