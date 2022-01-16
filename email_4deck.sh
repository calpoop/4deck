#!/bin/bash

round=1
if [ $1 ]; then
    round=$1
fi

file=hand_$(date +%m%d)_$round
[ ! -f $file ] && python3 4deck.py >$file


echo
echo player: 1
echo round:  $round
cat $file| sed -n '1,27p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 1 round $round" tengwendy07@gmail.com

echo
echo player: 2
echo round:  $round
cat $file| sed -n '28,54p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 2 round $round" hli_w@yahoo.com

echo
echo player: 3
echo round:  $round
cat $file| sed -n '55,81p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 3 round $round" jih@georgetown.edu

echo
echo player: 4
echo round:  $round
cat $file| sed -n '82,108p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 4 round $round" chianchen816@gmail.com

echo
echo player: 5
echo round:  $round
cat $file| sed -n '109,135p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 5 round $round" phu_99@yahoo.com

echo
echo player: 6
echo round:  $round
cat $file| sed -n '136,162p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 6 round $round" jzhao@italkbb.com

echo
echo player: 7
echo round:  $round
cat $file| sed -n '163,189p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 7 round $round" ytian62@yahoo.com

echo
echo player: 8
echo round:  $round
cat $file| sed -n '190,216p'|sort -r |perl f1.pl | sh f2.sh | mail -s "card for player 8 round $round" yli62@yahoo.com







