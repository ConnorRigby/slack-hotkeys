# Slack hotkeys
I wanted hot keys to be used from i3-wm.

## Usage
* clone this repo
  * make sure to clone submodules.
* make a file called `src/token.hpp`
* input something to the extent of the following
```cpp
#ifndef SLACK_TKN
#define SLACK_TKN "xoxp-REDACTED-PLEASEDONTHACKME-SUPERSECRET-caa3865fe275e60f2d64ab1e9821a807"
#endif
```
* `make`
* put the files in `bin/` in your `$PATH` somehow.
* put something to the extent of `bindsym XF86AudioRaiseVolume exec --no-startup-id users.profile.set status_text "RAISING THE VOLUME!!!"`
in your respective window manager config.


## Examples
```bash
bin/chat.postMessage somechannel "Hey guys!"
```

```bash
users.profile.set status_emoji :coffee:
```

```bash
users.profile.set status_text "some cool info about yourself"
```
