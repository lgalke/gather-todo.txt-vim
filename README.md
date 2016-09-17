# Gather todo.txt

## Description

Alright, so this is the first plugin I am publishing and maintaining.
after using vim for about 5 years and got into vimscript and plugin development
since one year ago, I feel confident enough to share my very own plugin.

For organizing todo notes, I liked the simplicity of the `todo.txt` format
along with the corresponding [vim
plugin](http://github.com/freitass/todo.txt-vim).  It features simple priority
managemant, contexts, projects, dates (and due dates!), as well as sorting on
any of these features, while not being as complicated as other solutions.  The
only thing I missed, was a hierarchical organization.  Thus, I used the natural
file system hierarchical structure (basically adding one todo.txt for each
project I am working on).

But then again, at some point I wanted to gather and merge the contents of all
todo.txt files in a directory tree.

The idea for gather-todo.txt-vim was born.

## Usage

The usage is as simple as ```GatherTodo root_dir1 [...]```, while
`GatherTodo` operates on the window's current directory.

This will trigger a recursive search on the directory tree(s), specified by the
given root(s).
The results of the found todo files will be printed in a new scratch buffer.
For sure, editing any item will not change anything in the original files,
but instead a new context at the end of each todo item is added with the path
to the todo file, where this item was found.
Therefore you can just use `$gf` to jump to a specific `todo.txt` file.

## Features

Regarding that what you get is actually a scratch buffer,
you can use the whole power of vim to do filtering on certain projects/tags:

Show only todo items with `@interesting` context:

```v/@interesting/d```

Don't show todo items from `+boring` project:

```g/+boring/d```

## Installation

### Using pathogen

```cd ~/.vim/bundle && git clone http://github.com/lgalke/gather-todo.txt-vim.git```

### Using Vundle

Put ```Plugin 'lgalke/gather-todo.txt-vim'``` in your `vimrc`.
