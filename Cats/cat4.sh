#!/bin/bash
user=`cat .ssh1.json | jq -r '.user'`
pass=`cat .ssh1.json | jq -r '.pass'`
ip=`cat .ssh1.json | jq -r '.ip'`

echo -e "-----😏 SEU LOGIN FOI GERADO😳-----"
echo -e "┌──────────────────────┐"
echo -e "│┗━━➤🌚USUARIO: $user"
echo -e "│┗━━➤🤔️SENHA: $pass"
echo -e "│┗━━➤🤗DOMÍNIOO: $ip"
echo -e "│┗━━➤🤗PORTAS: 80 e 433"
echo -e "└──────────────────────┘"
        if [[ -e .ssh1.json ]]; then                
           rm .ssh1.json 
                fi
