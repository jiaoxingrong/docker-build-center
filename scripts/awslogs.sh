#!/bin/bash -
if [[ ${AWSLOGS_REGION} ]]; then
    sed -i "s#ap-northeast-1#${AWSLOGS_REGION}#" /var/awslogs/etc/aws.conf
fi

if [[ ${AWSLOGS_ACCESS_KEY_ID} ]] &&  [[ ${AWSLOGS_SECRET_ACCESS_KEY} ]]; then
    echo -e "aws_access_key_id = ${AWSLOGS_ACCESS_KEY_ID}\naws_secret_access_key = ${AWSLOGS_SECRET_ACCESS_KEY}" >> /var/awslogs/etc/aws.conf
fi

/bin/sh /var/awslogs/bin/awslogs-agent-launcher.sh