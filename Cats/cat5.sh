#!/bin/bash
add=`cat .config.json | jq -r '.add'`
aid=`cat .config.json | jq -r '.aid'`
host=`cat .config.json | jq -r '.host'`
id=`cat .config.json | jq -r '.id'`
net=`cat .config.json | jq -r '.net'`
path=`cat .config.json | jq -r '.path'`
port=`cat .config.json | jq -r '.port'`

echo -e "-----πRESULTADO DA PESQUISAπ³-----"
echo -e "ββββββββββββββββββββββββ"
echo -e "βββββ€π¬DOMΓNIO: $add"
echo -e "βββββ€πALTERID: $aid"
echo -e "βββββ€π€οΈHOST: $host"
echo -e "βββββ€π€ID: $id"
echo -e "βββββ€π³REDE: $net"
echo -e "βββββ€πPATH: $path"
echo -e "βββββ€π±PORTA: $port"
echo -e "ββββββββββββββββββββββββ"
        if [[ -e .config.json ]]; then                
           rm .config.json 
                fi
