#!/bin/bash

round=1
if [ $1 ]; then
    round=$1
fi

email_file="emails.txt"
if [ $2 ]; then
    email_file=$2
fi

file=hand_$(date +%m%d)_$round
[ ! -f $file ] && python3 4deck.py >$file


# read emails from email file
emails=()
for email in $(cat ${email_file}); do
    echo $email
    emails+=(${email})
done

player_number=1
number_of_players=${#emails[@]}

number_of_decks=4
number_of_cards=$((${number_of_decks}*54))

cards_per_hand=$((${number_of_cards}/${number_of_players}))
card_index=1

echo "The number of players is ${number_of_players}"
echo "The number of decks is ${number_of_decks}"
echo "The number of cards in play is ${number_of_cards}"
echo "The number of cards per hand is ${cards_per_hand}"


# sed '<>, <>p' needs to be number of cards divided by number of players
for email_address in "${emails[@]}"
do
    second_card_index=$(($card_index+$cards_per_hand-1))
    echo
    echo player: $player_number
    echo round:  $round
    echo "player email: ${email_address}"
    cat $file| sed -n "${card_index},${second_card_index}p"|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player ${player_number} round $round" $email_address
    player_number=$((player_number+1))
    card_index=$((second_card_index+1))
done
