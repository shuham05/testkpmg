#/bin/sh
curl --write-out "\n" --request GET "http://169.254.169.254/latest/dynamic/instance-identity/document" --header "X-aws-ec2-metadata-token: $TOKEN" >> metadata_ouput
