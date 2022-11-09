#!/bin/bash

#Generar clave privada y certificado
openssl req -newkey rsa:4096 -nodes -keyout privatekey.key -x509 -days 999999 -out certificate.crt -passin pass:hadoop -subj "/OU=presto/CN=fisca-hadoop01/"

#Armar un bundle p12 con esa privada y cert
openssl pkcs12 -inkey privatekey.key -in certificate.crt -export -out bundle.p12 -passin pass:hadoop -passout pass:hadoop

#Importar certificado en un keystore
keytool -noprompt -importkeystore -srckeystore bundle.p12 -srcstoretype pkcs12 -srcstorepass hadoop -destkeystore presto.jks -deststoretype JKS -deststorepass hadoop

#Ver el contenido del certificado
openssl x509 -in certificate.crt -inform PEM -text