#!/bin/bash
recipient=$1
subject=$2
body=$3

echo -e "Subject:${subject}\n\n${body}" | \
curl --url 'smtp://smtp.gmail.com:587' --ssl-reqd \
     --mail-from "${SMTP_USER}" \
     --mail-rcpt "${recipient}" \
     --user "${SMTP_USER}:${SMTP_PASSWORD}" \
     -T -
