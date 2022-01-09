sed -e 's/T /10 /g' \
-e 's/Joker.*s/Small Joker/g' -e 's/Joker.*b/Big Joker/g' \
-e 's/spade/Spade \xE2\x99\xA0/gi' \
-e 's/heart/Heart \xE2\x99\xA5/gi' \
-e 's/club/Club \xE2\x99\xA3/gi' \
-e 's/diamond/Diamond \xE2\x99\xA6/gi'
#-e 's/diamond/Diamond \xE2\x97\x86/gi'

#spade   0xE2 0x99 0xA0 (e299a0)
#heart   %E2%9D%A4 (heart)
#        %E2%9D%A3 (club)
#Diamond  0xE2 0x97 0x86 (e29786)



