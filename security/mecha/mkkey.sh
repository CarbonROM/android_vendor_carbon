#!/bin/sh
AUTH='/C=US/ST=Tennessee/L=Chattanooga/O=LiquidSmoothROMs/OU=ICS/CN=JBirdVegas/emailAddress=jbirdvegas@gmail.com'

openssl genrsa -3 -out $1.pem 2048

openssl req -new -x509 -key $1.pem -out $1.x509.pem -days 10000 \
    -subj "$AUTH"

echo "Please enter the password for this key:"
openssl pkcs8 -in $1.pem -topk8 -outform DER -out $1.pk8 -passout stdin
