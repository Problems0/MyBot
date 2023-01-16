#!/bin/bash
ip=`cat .ip.json | jq -r '.query'`
country=`cat .ip.json | jq -r '.country'`
region=`cat .ip.json | jq -r '.regionName'`
city=`cat .ip.json | jq -r '.city'`
zip=`cat .ip.json | jq -r '.zip'`
lat=`cat .ip.json | jq -r '.lat'`
lon=`cat .ip.json | jq -r '.lon'`
asn=`cat .ip.json | jq -r '.as'`
org=`cat .ip.json | jq -r '.org'`


echo -e "-----😏RESULTADO DA PESQUISA😳-----"
echo -e "┌──────────────────────┐"
echo -e "│┗━━➤😬IP: $ip"
echo -e "│┗━━➤🤔️PAÍS️: $country"
echo -e "│┗━━➤🤗REGIÃO️: $region"
echo -e "│┗━━➤😳CIDADE: $city"
echo -e "│┗━━➤🌚ZIP CODE: $zip"
echo -e "│┗━━➤🌝LATITUDE: $lat"
echo -e "│┗━━➤😱LONGITUDE: $lon"
echo -e "│┗━━➤😑ASN: $asn"
echo -e "│┗━━➤😐ORG: $org"
echo -e "└──────────────────────┘"
        if [[ -e .ip.json ]]; then                
           rm .ip.json 
                fi
