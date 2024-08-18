

```lisp
(play "/path/to/file.mp3")
;; => #<PLAYER {}>

(toggle-play/pause #<PLAYER {}>)
```

This works in Slime but not on a default SBCL REPL nor in Lem :(

## dev

We use `mpv`'s built-in IPC.

https://mpv.io/manual/master/#json-ipc
