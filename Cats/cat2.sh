#!/bin/bash
cep=`cat .cep.json | jq -r '.cep'`
state=`cat .cep.json | jq -r '.state'`
city=`cat .cep.json | jq -r '.city'`
district=`cat .cep.json | jq -r '.district'`
address=`cat .cep.json | jq -r '.address'`

echo -e "-----πRESULTADO DA PESQUISAπ³-----"
echo -e "ββββββββββββββββββββββββ"
echo -e "βββββ€πCEP: $cep"
echo -e "βββββ€π€οΈESTADO: $state"
echo -e "βββββ€π€CIDADE: $city"
echo -e "βββββ€π³DISTRITO: $district"
echo -e "βββββ€πENDEREΓO: $address"
echo -e "ββββββββββββββββββββββββ"
        if [[ -e .cep.json ]]; then                
           rm .cep.json 
                fi

