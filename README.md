# kimsufi
Last stable version [available here](https://git.pofilo.fr/pofilo/kimsufi/releases).

Sends an alert when your Kimsufi server is available.

## Requirements

+ The script uses **python 3.7**
+ `pip install -r requirements.txt`

## Purpose

The objective is to **send notifications** when the Kimsufi server you want is available in the zone(s) desired.
There is (for now) 3 types of notifications:
+ Email
+ HTTP request
+ Telegram message

A notification will be send to the notifiers configured when the server is available and when it's not anymore.

## Documentation

In `doc/`, you can find [the list of references](https://git.pofilo.fr/pofilo/kimsufi/src/branch/master/doc/list-references.md) and [the list of zones](https://git.pofilo.fr/pofilo/kimsufi/src/branch/master/doc/list-zones.md). Helpful to edit the configuration file according to the Kimsufi server you want.

### TODO
Doc: How to get token and chatid for telegram notifications.

## Installation

+ Download the last stable version [available here](https://git.pofilo.fr/pofilo/kimsufi/releases)
+ `cd kimsufi`
+ `cp config/kimsufi.sample.conf config/kimsufi.conf`
+ Edit *config/kimsufi.conf*
+ `cd src`
+ `python3.7 kimsufi.py` or `python3.7 -u kimsufi.py > log.txt &` if you want to use it as a daemon *(the PID is given in the first lines of the logs)*

### Options

+ `-c`, `--conf`
    + Specify the path of the configuration file (relative to `kimsufi/src` or absolute)
    + Default value is `../config/kimsufi.conf`

## License

This project is licensed under the GNU GPL License. See the [LICENSE](https://git.pofilo.fr/pofilo/kimsufi/src/branch/master/LICENSE) file for the full license text.

## Credits

+ [@Pofilo](https://git.pofilo.fr/pofilo/)
+ [@c4s4](https://github.com/c4s4)

## Bugs

If you experience an issue, you have other ideas to the developpement or anything else, feel free to [report it](https://git.pofilo.fr/pofilo/kimsufi/issues) or  [fix it with a PR](https://git.pofilo.fr/pofilo/kimsufi/pulls)!

 