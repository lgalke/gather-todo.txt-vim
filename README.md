# Gather todo.txt

## Description

Alright, so this is the first plugin I am actually publishing,
after using vim for about 5 years and got into vimscript and plugin development
since one year ago.

As I liked the simplicity of the `todo.txt` format along with the corresponding
[vim plugin](http://github.com/freitass/todo.txt-vim) for organizing todo notes.
It features simple priority managemant, contexts, projects, dates (and due dates),
as well as sorting on any of these features.
The only thing I missed, was a hierarchical organization.
Thus, I used the natural file system hierarchical structure
(basically adding one todo.txt for each project I am working on).

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


## Installation

### Using pathogen

```cd ~/.vim/bundle && git clone http://github.com/lgalke/gather-todo.txt-vim.git```

### Using Vundle

Put ```Plugin 'lgalke/gather-todo.txt-vim'``` in your `vimrc`.
