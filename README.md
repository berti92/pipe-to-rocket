# pipe to rocket

pipe-to-rocket.sh is a little bash script which offers a very easy way to
pipe output of any command line command directly to Rocket.Chat.

## Installation

Install the dependencies:

`sudo apt install jq curl`

After that, just place the **pipe-to-rocket.sh** anywhere you want and change the
variable `CHAT_URL` to your Rocket.Chat webhook url. Make sure
that the script is in your path, if you don't want to type always
the full path to the script.

## How to use

You have to pipe your content to the bash script. E.g.:

`ls -hl | pipe-to-rocket.sh`

## License

MIT