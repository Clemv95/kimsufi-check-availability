# kimsufi
Fork and updated from https://git.pofilo.fr/pofilo/kimsufi
Added docker support

Sends an alert when your Kimsufi server is available.

## Requirements

+ The script uses **python 3.11**

## Purpose

The objective is to **send notifications** when the Kimsufi server you want is available in the zone(s) desired.
There is (for now) 3 types of notifications:
+ Email
+ HTTP request
+ Telegram message

A notification will be sent to the notifiers configured when the server is available and when it's not anymore.

## Documentation

### References and zones

In `doc/`, you can find [the list of references](https://github.com/Clemv95/kimsufi-check-availability/blob/master/doc/list-references.md) and [the list of zones](https://github.com/Clemv95/kimsufi-check-availability/blob/master/doc/list-zones.md). Helpful to edit the configuration file according to the Kimsufi server you want.

### Telegram

You can [find here](https://github.com/Clemv95/kimsufi-check-availability/blob/master/doc/notice-telegram.md) the documentation helping you to set up the telegram notifier.

## Installation without docker

+ Download the last stable version [available here](https://github.com/Clemv95/kimsufi-check-availability/releases)
+ `cd kimsufi`
+ Create virtual environment: `python3 -m venv .`
+ Source it: `source bin/activate`
+ Install dependencies: `pip install -r requirements.txt`
+ `cp config/kimsufi.sample.conf config/kimsufi.conf`
+ Edit *config/kimsufi.conf*
+ `cd src`
+ `python3 kimsufi.py` or `python3 -u kimsufi.py > log.txt &` if you want to use it as a daemon *(the PID is given in the first lines of the logs)*

## Installation with docker
+ Download the last stable version [available here](https://github.com/Clemv95/kimsufi-check-availability/releases)
+ `cd kimsufi`
+ Edit *config/kimsufi.conf*
+ Build the image: `docker build -t kimsufi-check-availability .`
+ Run it: `docker run -d kimsufi-check-availability`

### Options

+ `-c`, `--conf`
    + Specify the path of the configuration file (relative to `kimsufi/src` or absolute)
    + Default value is `../config/kimsufi.conf`


### Adding notifier

You can hack the script and add notifiers in the file `notifications.py`. Simply create a new function (in parameter, you can have the config and the boolean meaning if the server is found or not) and call it into `send_notifications(config, found)`, modify the configuration file if needed, et voilà!

### Linter

`pylint` is a bit used for this project (not yet perfect, feel free to help if you have some time!).

```
pip install pylint
pylint --disable=C0301 src/*\.py
```

*Screens are long enough to print big lines...*

## License

This project is licensed under the GNU GPL License. See the [LICENSE](https://github.com/Clemv95/kimsufi-check-availability/blob/master/LICENSE) file for the full license text.

## Credits

+ [@Pofilo](https://git.pofilo.fr/pofilo/)
+ [@c4s4](https://github.com/c4s4)

## Bugs

If you experience an issue, you have other ideas for the development, or anything else, feel free to [report it](https://github.com/Clemv95/kimsufi-check-availability/issues) or  [fix it with a PR](https://github.com/Clemv95/kimsufi-check-availability/pulls)!

