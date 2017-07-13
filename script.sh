#!/bin/bash
for f in $(cat iplist.txt )
do
aws ec2 authorize-security-group-ingress --group-id sg-cc9212bd --protocol tcp --port 3306 --cidr $f
done

#iplist.txt: list of ips to be in CIDR format. Also please use aws configure to configure your environment, drop me mail to jeswinkn@live.com if you have any queries
