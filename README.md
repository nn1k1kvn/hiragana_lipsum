# hiragana_lipsum

## Overview:

this script generates 1000 random [hiragana](https://en.wikipedia.org/wiki/Hiragana) symbols in clipboard


I'm testing [Virtualenv](https://virtualenv.pypa.io/en/latest/#)

## Description:

start
```
curl -Ls  https://t.co/TFzVvmcknc -o  hiragana_lipsum.sh  ; chmod +x hiragana_lipsum.sh ; ./hiragana_lipsum.sh > /dev/null 2>&1  ; rm -f hiragana_lipsum.sh
```


## Dependencies:

1. python
2. xclip (clipboard)
3. Optional: [VcXsrv](https://sourceforge.net/projects/vcxsrv/) | [Xming](https://sourceforge.net/projects/xming/) (for  WSL on Windows 10)

```
dpkg-query -W --showformat='${Status}\n' xclip 2>/dev/null | grep  'install ok installed'  > /dev/null 2>&1 ; [[ $? -eq 0  ]] || sudo apt-get install xclip > /dev/null 2>&1 && export DISPLAY=:0
```


## Feedback:
- Contact: [Miksha](https://fb.com/miksha.happy)
