#!/bin/bash
#Autor: Alberto Dias - 28/09/2023

# Diretório dos backups a serem migrados
local_dir="/data/backups"

# Servidor físico
remote_server="user@ip"

# Diretório do Servidor físico
remote_dir="/home/user/bkp"

# Loop para transferir todos os arquivos de bkp
for file in "$local_dir"/DB_BAK_*.tar.gz; do
   # Extrai o nome do arquivo sem o caminho
   filename=$(basename "$file")

    #copiar os arquivos
    scp $remote_server/$filename $remote_dir/

done