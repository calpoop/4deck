# Python program to shuffle a deck of card
# blackJoker = SM  small cat
# redJoker = BM  big cat
# by DJ

# importing modules
import itertools, random

ndeck=4
# make a deck of cards
#deck = list(itertools.product(range(1,14),['Spade','Heart','Diamond','Club'])
card = [ "eAD", "eAS", "eAC", "eAH",
            "f2D", "f2S", "f2C", "f2H",
            "33D", "33S", "33C", "33H",
   	    "44D", "44S", "44C", "44H",
            "55D", "55S", "55C", "55H",
            "66D", "66S", "66C", "66H",
            "77D", "77S", "77C", "77H",
            "88D", "88S", "88C", "88H",
            "99D", "99S", "99C", "99H",
            "aTD", "aTS", "aTC", "aTH",
            "bJD", "bJS", "bJC", "bJH",
            "cQD", "cQS", "cQC", "cQH",
            "dKD", "dKS", "dKC", "dKH" ,"hbU", "gsU"]

i=3
deck= card + card + card 
while i < ndeck:
   i = i + 1
   deck=deck+card


# shuffle the cards
random.shuffle(deck)

# draw five cards
for i in range(0,54*ndeck):
  print(deck[i][2],deck[i][0],deck[i][1])
