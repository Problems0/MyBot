#!/bin/bash
add=`cat .config.json | jq -r '.add'`
aid=`cat .config.json | jq -r '.aid'`
host=`cat .config.json | jq -r '.host'`
id=`cat .config.json | jq -r '.id'`
net=`cat .config.json | jq -r '.net'`
path=`cat .config.json | jq -r '.path'`
port=`cat .config.json | jq -r '.port'`

echo -e "-----😏RESULTADO DA PESQUISA😳-----"
echo -e "┌──────────────────────┐"
echo -e "│┗━━➤😬DOMÍNIO: $add"
echo -e "│┗━━➤🌚ALTERID: $aid"
echo -e "│┗━━➤🤔️HOST: $host"
echo -e "│┗━━➤🤗ID: $id"
echo -e "│┗━━➤😳REDE: $net"
echo -e "│┗━━➤🌝PATH: $path"
echo -e "│┗━━➤😱PORTA: $port"
echo -e "└──────────────────────┘"
        if [[ -e .config.json ]]; then                
           rm .config.json 
                fi
