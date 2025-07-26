
A simple media player for Lem, built on `mpv`.

> [!NOTE]
> Proof Of Concept

## Installation

You must install the `mpv` player and the `socat` library.

## Usage

With Lem's GUI, right click on a file (in directory mode) and click play.

Available commands (with M-x):

- media-player-play (on a file in directory mode)
- media-player-play-directory (asks for a directory)
- media-player-toggle: toggle play/pause
- media-player-next/previous: play next or previous file.
- media-player-stop

When enabling `media-player-mode`, right click anywhere to get a
context menu with player controls.

![](gui-controls.png "media player controls anywhere")


## From Common Lisp

```lisp
(play "/path/to/file.mp3")
;; => #<PLAYER {}>

(toggle-play/pause)
```

NB: all functions in `media-player.lisp` don't depend on Lem.


## dev

We use `mpv`'s built-in IPC.

https://mpv.io/manual/master/#json-ipc

This is the list of commands we can have: https://mpv.io/manual/master/#list-of-input-commands

Inspired by https://github.com/xenodium/ready-player/, we'd like to go to this direction (UI wise).
