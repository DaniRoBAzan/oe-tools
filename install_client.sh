#!/usr/bin/env bash
#######################################################################
# Install odoo client with odoo-env
github_user=$1
client=$2

# install_server.sh
cd ~
git clone "https://github.com/"$github_user"/cl-"$client".git"
cd "cl-"$client
## instalación del entorno
oe -i -c $client
## para levantar container de postgres
oe -R -c $client
## para escribir odoo.config
oe -w -c $client
## para levantar container de odoo
oe -r -c $client

#para correr es: ./install_client.sh user_git client_name