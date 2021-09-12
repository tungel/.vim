My ~/.vim directory

Compile `vimproc` after cloning this repo:

```
$ cd ~/.vim/bundle/vimproc.vim
$ make
```

## Problem with updating subtree

For some reason, running `git subtree pull ...` resulted in error

```
Can't squash-merge: 'bundle/vim-fugitive' was never added.
```

Fix:

```
git rm -rf bundle/vim-fugitive
git subtree add --prefix bundle/vim-fugitive https://github.com/tpope/vim-fugitive.git master --squash
```

