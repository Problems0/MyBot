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


echo -e "-----πRESULTADO DA PESQUISAπ³-----"
echo -e "ββββββββββββββββββββββββ"
echo -e "βββββ€π¬IP: $ip"
echo -e "βββββ€π€οΈPAΓSοΈ: $country"
echo -e "βββββ€π€REGIΓOοΈ: $region"
echo -e "βββββ€π³CIDADE: $city"
echo -e "βββββ€πZIP CODE: $zip"
echo -e "βββββ€πLATITUDE: $lat"
echo -e "βββββ€π±LONGITUDE: $lon"
echo -e "βββββ€πASN: $asn"
echo -e "βββββ€πORG: $org"
echo -e "ββββββββββββββββββββββββ"
        if [[ -e .ip.json ]]; then                
           rm .ip.json 
                fi
