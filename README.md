<h1 align="center">Halia DE environment</h1>
A set of dotfiles and configuration utilities for Linux distros

## Table of Contents

- [About](#about)
- [Gallery](#gallery)
- [Installation](#install)
- [Keybinds](#keybinds)
- [FAQ](#faq)

<a id="about"></a>
## About

Hi, welcome to my dotfiles repository.

Here are the development environment configuration I use on a daily basis, going from server configurations for remotes and window manager settings.

Curiousity brought you here, maybe you want to [install](#install) this configuration to try it by yourself, otherwise feel free to look around :)

Still have a doubt about what you want from here ? You might want to take a look at the [gallery](#gallery).

|         Application         |         Package(s)         |
|-----------------------------|----------------------------|
| Window Manager              | i3-gaps                    |
| Browser                     | Firefox                    |
| Application launcher        | Rofi                       |
| Bar                         | Polybar                    |
| Screenshots                 | Flameshot                  |
| Color scheme                | Ayu                        |
| Terminals                   | Alacritty & xterm          |
| Shell                       | Zsh                        |

<a id="gallery"></a>
## Gallery

<img src="/Images/Screenshots/desktop.png">

<a id="install"></a>
## Installation
### Requirements

- [jq](https://stedolan.github.io/jq/)
- [fzf](https://github.com/junegunn/fzf)
- [w3m](http://w3m.sourceforge.net/)
- [bitwarden-cli](https://github.com/bitwarden/cli)
- [bitwarden-rofi](https://github.com/mattydebie/bitwarden-rofi)

### Cloning the repository

/!\ To be written

### Configuration

/!\ To be written

<a id="keybinds"></a>
## Keybinds
These are the most used and basic keybinds. You might want to read through `.config/i3/config` to find more keybindings and add your own.

Note: `Mod` is by default set to the window key<br>
Note: Navigation keys (hjkl) can be substituted by arrow keys
### Applications
|           Keybind           |          Function          |
|-----------------------------|----------------------------|
| `Mod + Enter`               | Launch terminal (alacritty)|
| `Mod + Shift + Enter`       | Launch browser (firefox)   |
| `Mod + Space`               | Launch app launcher (rofi) |
| `Mod + s`                   | Open screenshot tool (flameshot)|
| `Mod + a`                   | Close focused window       |
| `Mod + Shift + c`           | Reload i3 configurations   |
| `Mod + Ctrl + r`            | Restart i3                 |
| `Mod + c`                   | Display calendar widget    |
| `Mod + d`                   | Display drive info widget  |
| `Mod + p`                   | Open bitwarden-rofi        |

### Window navigation
|           Keybind           |          Function          |
|-----------------------------|----------------------------|
| `Mod + h`                   | Focus window on the left   |
| `Mod + j`                   | Focus window above         |
| `Mod + k`                   | Focus window underneath    |
| `Mod + l`                   | Focus window on the right  |
| `Mod + Shift + h`           | Move window to the left    |
| `Mod + Shift + j`           | Move window above          |
| `Mod + Shift + k`           | Move window underneath     |
| `Mod + Shift + l`           | Move window to the right   |
| `Mod + {1-9}`               | Move to {1-9} workspace    |
| `Mod + Shift + {1-9}`       | Move selected window(s) to workspace {1-9} |

### Split management
|           Keybind           |          Function          |
|-----------------------------|----------------------------|
| `Mod + v`                   | Split vertically           |
| `Mod + g`                   | Split horizontally         |
| `Mod + Backspace`           | Toggle split orientation   |
| `Mod + t`                   | Cycle between vert,hor and tabbed |
| `Mod + f`                   | Toggle fullscreen          |
| `Mod + Shift + f`           | Toggle floating mode       |
| `Mod + r`                   | Toggle resize mode         |

<a id="faq"></a>
# Frequently asked questions

#### What is the point of using multiple terminal emulators ?
Some machines, lacking discrete or recent GPU, will not be able to start Alacritty. This is the main reason to have xterm as a backup terminal.

# Misc
### Slack theming
Updated as of [this commit](https://github.com/TanguyHerbron/dotfiles/commit/9adabddf70494ba534bcc5dd94260a92e1c996c3)

`#0F1419,#1F2430,#73D0FF,#1F2430,#1F2430,#D9D7CE,#BAE67E,#FF6666,#1F2430,#FFFFFF`
