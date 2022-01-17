welcome to the 4deck card shuffler and hand emailer

usage:

first, create the list of emails in a file called "emails.txt"

the format of the file should be as follows:

```
email1@example.com  
email2@example.com  
email3@example.com  
```

1 email per line, nothing else. Each line delimited by a newline character

then run the following:

./email_4deck_wrapper.sh \<number_of_rounds_to_play\>


this should email a hand to every player on the emails.txt file for however many rounds you set


**NOTE**:  
The machine running this script needs to be able to run bash and use the `mail` command, and the `mail` command needs to be set up such that an email is already set.  

*example on Ubuntu*:  

reference: https://devanswers.co/configure-postfix-to-use-gmail-smtp-on-ubuntu-16-04-digitalocean-droplet/  

if you are using gmail, you need to find the setting to "enable less secure app access" at least while you intend to run the `mail` command
