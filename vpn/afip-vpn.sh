#!/bin/bash

LEGAJO=u44009
USER=mestevez
HOST=pablopc
OCPID=/var/run/oc.pid
SSHUPID=/var/run/sshuttle.pid

sudo openconnect https://as.afip.gob.ar \
--protocol=nc \
--no-dtls \
--background \
--user=${LEGAJO} \
--pid-file=${OCPID}

sshuttle --python /usr/bin/python2 --pidfile ${SSHUPID} -r ${USER}@${HOST} 0.0.0.0/0
