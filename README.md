# Dotfiles

Installation:

```
# Clone repo
git clone http://github.com/judofyr/dotfiles.git ~/.dotfiles
# Link the manager as bin/dfm
~/.dotfiles/manager link manager bin/dfm
```

Link a single file or directory:

```
bin/dfm link vimrc
bin/dfm link vim
```

Link a file to a different location:

```
bin/dfm link minimal-vimrc .vimrc
```

List all files that are linked:

```
bin/dfm linked
```

List all files that can be linked:

```
bin/dfm ls
```

Remove a link:

```
bin/dfm rm vim
```

