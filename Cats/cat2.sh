#!/bin/bash
cep=`cat .cep.json | jq -r '.cep'`
state=`cat .cep.json | jq -r '.state'`
city=`cat .cep.json | jq -r '.city'`
district=`cat .cep.json | jq -r '.district'`
address=`cat .cep.json | jq -r '.address'`

echo -e "-----😏RESULTADO DA PESQUISA😳-----"
echo -e "┌──────────────────────┐"
echo -e "│┗━━➤🌚CEP: $cep"
echo -e "│┗━━➤🤔️ESTADO: $state"
echo -e "│┗━━➤🤗CIDADE: $city"
echo -e "│┗━━➤😳DISTRITO: $district"
echo -e "│┗━━➤😏ENDEREÇO: $address"
echo -e "└──────────────────────┘"
        if [[ -e .cep.json ]]; then                
           rm .cep.json 
                fi

