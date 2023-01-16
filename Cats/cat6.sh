#!/bin/bash
subs=`cat .sub.json | jq -r '.passive_dns[].hostname'`


echo -e "🔧SUBDOMINIOS: LOGO ABAIXO"

cat >'sub.txt' <<EOT
By @LotissBot
$subs

EOT

        if [[ -e .sub.json ]]; then                
           rm .sub.json 
                fi
