#!/bin/bash
user=`cat .ssh1.json | jq -r '.user'`
pass=`cat .ssh1.json | jq -r '.pass'`
ip=`cat .ssh1.json | jq -r '.ip'`

echo -e "-----π SEU LOGIN FOI GERADOπ³-----"
echo -e "ββββββββββββββββββββββββ"
echo -e "βββββ€πUSUARIO: $user"
echo -e "βββββ€π€οΈSENHA: $pass"
echo -e "βββββ€π€DOMΓNIOO: $ip"
echo -e "βββββ€π€PORTAS: 80 e 433"
echo -e "ββββββββββββββββββββββββ"
        if [[ -e .ssh1.json ]]; then                
           rm .ssh1.json 
                fi
