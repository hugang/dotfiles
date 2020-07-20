# Enter Vim
```bash
vim hello.md
```
## mode
v enter select mode
i enter insert mode
esc exit current mode and enter normal mode

## move
> gg -> home
> G -> end
> ctrl+d -> half page down
> ctrl+u -> half page up
> h -> left
> l -> right
> j -> down
> k -> up
> w -> word left head forward
> e -> word left end forward
> b -> word left head backward

## copy
> yy line copy
> yw word copy y = yank

## paste
> p paste
> shift+p paste before

## cut
> dd cut line

## composite command
command + unit + parameter
```shell
di" delete all words in ""
```

##
"{hello,world}"

## save and quit
:w save
:q quit

## search current screen document
/

## replace
:%s/hello/hallo/g
