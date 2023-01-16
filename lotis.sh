#!/bin/bash

source ShellBot.sh

bot_token='5853388804:AAF1uts86002bIZGwPFpcxwTm_gBAKgb7wg'

ShellBot.init --token "$bot_token" --monitor --flush --log_file "/tmp/${0##*/}.log"
ShellBot.username

start()
{
	local msg

     msg+="😳😏 BEM VINDO *${message_from_first_name[$id]}😳😏"
     msg+="┌──────────────────────┐"'\n'
     msg+="│┗━━➤OPA, É NOVO?"'\n'
     msg+="│┗━━➤SEU ID: *${message_from_id[$id]}"'\n'
     msg+="│┗━━➤Dev @NobodyDev "'\n'
     msg+="└──────────────────────┘"'\n'
    
	ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
	ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
							--reply_to_message_id ${message_message_id[$id]} \
							--text "$(echo -e $msg)" \
							--parse_mode markdown
	ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Sticker.webp
    
	return 0	
}

info_loti()
{
	local msg

        msg+="------------😏INFO DOS LOTI😳------------"
    msg+="┌──────────────────────┐"'\n'
    msg+="│┗━━➤ID: ${message_from_id[$id]}"'\n'
    msg+="│┗━━➤NOME: *${message_from_first_name[$id]}*"'\n'
    msg+="│┗━━➤USERNAME: *@${message_from_username[$id]}*"'\n'
    msg+="│┗━━➤É LOTTER?: Nao ou Sim?"
    msg+="└──────────────────────┘"'\n'

	ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
	ShellBot.sendMessage --chat_id ${message_chat_id[$id]} \
									--reply_to_message_id ${message_message_id[$id]} \
        							--text "$(echo -e $msg)" \
            							--parse_mode markdown
	ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Sticker2.webp

	return 0	
}


ip_json()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(curl -s http://ip-api.com/json/$2 | jq '.' > .ip.json && mv .ip.json Cats && cd Cats && ./cat.sh)" \
								--parse_mode markdown
   ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Hacker.webp

	return 0
}

cep_json()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(curl -s https://cep.awesomeapi.com.br/json/$2| jq >> .cep.json && mv .cep.json Cats &&  cd Cats && ./cat2.sh)" \
								--parse_mode markdown
   ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Hacker.webp

	return 0	
}

cnpj_json()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(curl -s https://www.receitaws.com.br/v1/cnpj/$2 | jq '.' > .cnpj.json && mv .cnpj.json Cats && cd Cats && ./cat3.sh)" \
								
   ShellBot.sendDocument --chat_id ${message_chat_id[$id]} --document '@/root/MyBot/Cats/resultado.txt'
   rm /root/MyBot/Cats/resultado.txt
   								--parse_mode markdown
   ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Hacker.webp
	return 0	
}

ssh1_json()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(cookie=$(curl -s https://www.nettunnel.xyz/ssh/ca/ -H "User-Agent: Android" -H "Origin: https://www.nettunnel.xyz" -H "x-requested-with: XMLHttpRequest" -i | grep "PHPSESSID" | cut -d ";" -f1 | cut -d " " -f2)
curl -s -d "" https://www.nettunnel.xyz/ssh/ca/pages/create.php -H "User-Agent: Android" -H "Origin: https://www.nettunnel.xyz" -H "x-requested-with: XMLHttpRequest" -H "Cookie: $cookie" | jq > .ssh1.json ; mv .ssh1.json Cats ; cd Cats ; ./cat4.sh)" \
								--parse_mode markdown
	return 0	
}

sub_json()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(curl -s https://otx.alienvault.com/api/v1/indicators/domain/$2/passive_dns | jq '.' > .sub.json ; mv .sub.json Cats ; cd Cats ; ./cat6.sh)" \
								
   ShellBot.sendDocument --chat_id ${message_chat_id[$id]} --document '@/root/MyBot/Cats/sub.txt'
  rm /root/MyBot/Cats/sub.txt
   								--parse_mode markdown
   ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Hacker.webp
	return 0	
}

decode_json()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "$(base64 -d <<< "$2" | jq '.' > .config.json ; mv .config.json Cats ; cd Cats ; ./cat5.sh)" \
								--parse_mode markdown
	return 0	
}


manutencao_ten()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "FUNÇÃO EM MANUTENÇÃO❌" \
								--parse_mode markdown
   ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Sticker2.webp
	
	return 0	
}

comando_invalido()
{

  ShellBot.sendChatAction --chat_id ${message_chat_id[$id]} --action 'typing'
		ShellBot.sendMessage	--chat_id ${message_chat_id[$id]} \
								--reply_to_message_id ${message_message_id[$id]} \
								--text "ERRO: COMANDO NAO ENCONTRADO OU NAO CONTÉM ARGUMENTOS❌" \
								--parse_mode markdown
   ShellBot.sendSticker --chat_id ${message_chat_id[$id]} --sticker https://raw.githubusercontent.com/Problems0/MyBot/main/Sticker/Sticker2.webp
	
	return 0	
}

ShellBot.setMessageRules	--name 'start'		\
							--chat_type private				\
							--command '/start'				\
							--action start    \	

ShellBot.setMessageRules	--name 'info_loti'		\
							--chat_type 'private'				\
							--command '/lotis'				\
							--action info_loti    \	


ShellBot.setMessageRules	--name 'ip_json'		\
							--chat_type 'supergroup,group,private'				\
							--command '/ip'				\
							--num_args 2 \
							--action ip_json    \
 							
ShellBot.setMessageRules	--name 'cep_json'		\
							--chat_type 'supergroup,group,private'				\
							--command '/cep'				\
							--num_args 2 \
							--action cep_json    \						
							
ShellBot.setMessageRules	--name 'cnpj_json'		\
							--chat_type 'supergroup,group,private'				\
							--command '/cnpj'				\
							--num_args 2 \
							--action cnpj_json    \													

ShellBot.setMessageRules	--name 'ssh1_json'		\
							--chat_type 'supergroup,group,private'				\
							--command '/gen'				\
							--num_args 1 \
							--action ssh1_json    \
							
ShellBot.setMessageRules	--name 'sub_json'		\
							--chat_type 'supergroup,group,private'				\
							--command '/sub'				\
							--num_args 2 \
							--action sub_json    \							
							
ShellBot.setMessageRules	--name 'decode_json'		\
							--chat_type 'supergroup,group,private'				\
							--command '/decode'				\
							--num_args 2 \
							--action decode_json    \							
													
ShellBot.setMessageRules	--name 'comando_invalido'		\
							--chat_type private				\
							--entitie_type bot_command		\
							--action comando_invalido    \			
																																																																																	
while : 
do
	
	ShellBot.getUpdates --limit 999 --offset $(ShellBot.OffsetNext) --timeout 999
	

	for id in $(ShellBot.ListUpdates)
	do

	(
		ShellBot.manageRules --update_id $id
		
	) & 
	done
done
#FIM

