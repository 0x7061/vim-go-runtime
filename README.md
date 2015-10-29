# vim-go-runtime
Fast and extendable vim-based go development environment.

<img src="https://raw.githubusercontent.com/codepushr/vim-go-runtime/master/screenshots/screenshot_01.png" alt="vim-go-runtime" />

## Install

1. Backup your old **.vimrc**, **.gvimrc** or **.ctags** if you have one:

  ```$ cp ~/.vimrc ~/.vimrc_backup```

2. Simply clone this repository to ~/.vim-go-runtime in your home folder like this:

  ```$ git clone --recursive git@github.com:codepushr/vim-go-runtime.git ~/.vim-go-runtime```

3. Move to the directory and run the install script:

  ```$ cd ~/.vim-go-runtime && sh install.sh```
  
  This will take some time as its going to install all the vim plugins including vim-go and YouCompleteMe (which is quite large and needs to get compiled).
  
## Vimrcs
  
There are several vimrcs that play together in this configuration.

1. The base <a href="https://github.com/amix/vimrc" target="_blank">vimrc by amix</a> located in `submodules/amix-vimrc/vimrcs/basic.vim`
2. The extended vimrc for custom configs located in `vimrc/extended.vim`
3. The plugins vimrc with the list of plugins an their configs located in `vimrcs/plugins.vim`
4. The shortcut config for mvim (gui_running) located in `gvimrcs/shortcuts.vim`
  
## Plugins

<table>
  <tr>
    <td><strong>Plugin</strong></td>
    <td><strong>Description</strong></td>
  </tr>
  <tr>
    <td><a href="https://github.com/Valloric/YouCompleteMe" target="_blank">Valloric/YouCompleteMe</a></td>
    <td>You need this for proper auto completion when coding in go.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/kien/ctrlp.vim" target="_blank">kien/ctrlp</a></td>
    <td>Switch between files, buffers or tags in no time. Yeah!</td>
  </tr>
  <tr>
    <td><a href="https://github.com/xolox/vim-misc" target="_blank">xolox/vim-misc</a></td>
    <td>Dependency for vim-session, see below.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/xolox/vim-session" target="_blank">xolox/vim-session</a></td>
    <td>Don't abuse tmux, use vim-session to reopen all your buffers!</td>
  </tr>
  <tr>
    <td><a href="https://github.com/fatih/vim-go" target="_blank">fatih/vim-go</a></td>
    <td>This is THE golang plugin for vim! The reason I switched to vim.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/garyburd/go-explorer" target="_blank">garyburd/go-explorer</a></td>
    <td>Nice to have plugin to show documentation for a specific package.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/sirver/ultisnips" target="_blank">sirver/ultisnips</a></td>
    <td>Really useful plugin if you want to generate boilerplate code.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/tpope/vim-fugitive" target="_blank">tpope/vim-fugitive</a></td>
    <td>Git integration to check commits, status and more directly in vim.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/tomtom/tcomment_vim" target="_blank">tomtom/tcomment_vim</a></td>
    <td>Plugin for super fast and convenient commenting (inline, block).</td>
  </tr>
  <tr>
    <td><a href="https://github.com/scrooloose/nerdtree" target="_blank">scrooloose/nerdtree</a></td>
    <td>Shows a file tree on the left and lets you modify files directly in vim.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/Raimondi/delimitMate" target="_blank">Raimondi/delimitMate</a></td>
    <td>Very useful plugin for auto-completing quotes, parens, brackets etc.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/rking/ag.vim" target="_blank">rking/ag</a></td>
    <td>This plugin lets you browse for code throughout your whole project.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/majutsushi/tagbar" target="_blank">majutsushi/tagbar</a></td>
    <td>Shows a sexy tag-bar on the right and lets you jump directly to tags.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/ap/vim-buftabline" target="_blank">ap/vim-buftabline</a></td>
    <td>Displays a bar on the top showing all your open buffers.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/itchyny/lightline.vim" target="_blank">itchyny/lightline</a></td>
    <td>This plugin shows a nice status bar and is very configurable.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/flazz/vim-colorschemes" target="_blank">flazz/vim-colorschemes</a></td>
    <td>Gives you tons of color schemes for vim.</td>
  </tr>
  <tr>
    <td><a href="https://github.com/mhinz/vim-sayonara" target="_blank">mhinz/vim-sayonara</a></td>
    <td>This plugin helps you to close buffers or whole windows.</td>
  </tr>
</table>

## Leader

The leader is configured as `,`

## Shortcuts

Here's a quick list of shortcuts that I configured. You can change them to your needs in `vimrcs/extended.vim` or `vimrcs/plugins.vim` or `gvimrcs/shortcuts.vim`.

#### Navigation

<h5>Basic</h5>
<table>
  <tr>
    <td><strong>Shortcut</strong></td>
    <td><strong>Description</strong></td>
  </tr>
  <tr>
    <td><code>[ctrl]+Tab</code></td>
    <td>Switch to next buffer</td>
  </tr>
  <tr>
    <td><code>[ctrl]+[shift]+Tab</code></td>
    <td>Switch to previous buffer</td>
  </tr>
  <tr>
    <td><code>[cmd]+[alt]+Left</code></td>
    <td>Switch to left pane (mvim)</td>
  </tr>
  <tr>
    <td><code>[cmd]+[alt]+Right</code></td>
    <td>Switch to right pane (mvim)</td>
  </tr>
  <tr>
    <td><code>[cmd]+[alt]+Up</code></td>
    <td>Switch to upper pane (mvim)</td>
  </tr>
  <tr>
    <td><code>[cmd]+[alt]+Down</code></td>
    <td>Switch to lower pane (mvim)</td>
  </tr>
  <tr>
    <td><code>[cmd]+w</code></td>
    <td>Close buffer (mvim)</td>
  </tr>
  <tr>
    <td><code>[cmd]+[shift]+w</code></td>
    <td>Close window & buffer (mvim)</td>
  </tr>
  <tr>
    <td><code>[leader]+n</code></td>
    <td>Toggle nerdtree navigator</td>
  </tr>
  <tr>
    <td><code>[leader]+m</code></td>
    <td>Toggle tagbar</td>
  </tr>
</table>

<h5>Ctrlp</h5>
<table>
  <tr>
    <td><strong>Shortcut</strong></td>
    <td><strong>Description</strong></td>
  </tr>
  <tr>
    <td><code>[leader]+j</code></td>
    <td>List of last opened buffers</td>
  </tr>
  <tr>
    <td><code>[crtl]+f</code></td>
    <td>List of all files in the project</td>
  </tr>
  <tr>
    <td><code>[crtl]+d</code></td>
    <td>List of all tags in current buffer</td>
  </tr>
</table>
<h5>Quickfix</h5>
<table>
  <tr>
    <td><strong>Shortcut</strong></td>
    <td><strong>Description</strong></td>
  </tr>
  <tr>
    <td><code>[ctrl]+n</code></td>
    <td>Go to next occurance</td>
  </tr>
  <tr>
    <td><code>[ctrl]+p</code></td>
    <td>Go to previous occurance</td>
  </tr>
  <tr>
    <td><code>[leader]+a</code></td>
    <td>Close quickfix window</td>
  </tr>
</table>

#### Golang

<table>
  <tr>
    <td><strong>Shortcut</strong></td>
    <td><strong>Description</strong></td>
  </tr>
  <tr>
    <td><code>[leader]+i</code></td>
    <td>Run go info on the current selection</td>
  </tr>
  <tr>
    <td><code>[leader]+r</code></td>
    <td>Run current file</td>
  </tr>
  <tr>
    <td><code>[leader]+b</code></td>
    <td>Build current project</td>
  </tr>
  <tr>
    <td><code>[leader]+d</code></td>
    <td>Run go doc on the current selection</td>
  </tr>
  <tr>
    <td><code>[leader]+f</code></td>
    <td>Jump to the definition of selection</td>
  </tr>
</table>

#### Project wide search

<table>
  <tr>
    <td><strong>Shortcut</strong></td>
    <td><strong>Description</strong></td>
  </tr>
  <tr>
    <td><code>[leader]+g</code></td>
    <td>Search for term</td>
  </tr>
  <tr>
    <td><code>[leader]+a</codee></td>
    <td>Close quickfix window</td>
  </tr>
</table>

## Licence Information

Copyright 2015 - by Aleksandar Palic - http://www.twitter.com/codepushr

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
