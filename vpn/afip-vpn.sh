#!/bin/bash

f5fpc -s -u u44009 -t https://apm.afip.gob.ar
watch -n 10 f5fpc --info
f5fpc --stop

