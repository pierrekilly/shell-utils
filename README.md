# shell-utils
Some shell utility tools

I have developped these tools for my personnal use. Maybe someone else find them usefull.

## termshot

This tool takes a "screenshot" of the output of a cli command.

Example:
```shell
termshot ls -l --color=auto /
```
gives this result:
![screenshot of terminal command, with colors](screenshots/termshot.png "Screenshot of a terminal command, with colors.")

The image is saved in the `${HOME}/Pictures` folder and is timestamped.

