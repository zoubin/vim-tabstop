# vim-tabstop
Set tabstop option in vim

## Usage

If you use [Vundle](https://github.com/gmarik/Vundle.vim), put this in your `.vimrc`

```vim

Plugin "zoubin/vim-tabstop"

```

Now you can use the command `Tabstop`:

```vim
:Tabstop 2 " set tabstop to 2
:Tabstop 4 " set tabstop to 4
```

Or:

```vim
:Tabstop " set tabstop to 4
:Tabstop " set tabstop to 2
```

If no arguments given, it will iterate `[2, 4]` by default.

You can specify the alternatives in your `.vimrc`

```vim
" Put it before Plugin
" Now tabstop is set to 2 at first, and then 4, 8 for each switch
let g:tabstop_alternatives = [2, 4, 8]
Plugin "zoubin/vim-tabstop"
```

```vim
:Tabstop " set tabstop to 4
:Tabstop " set tabstop to 8
:Tabstop " set tabstop to 2
:Tabstop " set tabstop to 4
```

