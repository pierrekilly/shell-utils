# shell-utils
Some shell utility tools

I have developped these tools for my personnal use. Maybe someone else find them usefull.

You should feel free to use them but if you improve them, please let me know so everyone can benefit from it.

## termshot

This tool takes a "screenshot" of the output of a cli command.

Example:
```shell
termshot ls -l --color=auto /
```
gives this result:
![screenshot of terminal command, with colors](screenshots/termshot.png "Screenshot of a terminal command, with colors.")

The image is saved in the `${HOME}/Pictures` folder and is timestamped.

It relies on [Daniel J. Bernstein's ptybandage](https://jdebp.eu/Softwares/djbwares/bernstein-ptyget.html), [aha - Ansi HTML Adapter](https://github.com/theZiz/aha), [phantomjs](http://phantomjs.org/) and [ImageMagik's convert](https://www.imagemagick.org/script/convert.php) to work.

