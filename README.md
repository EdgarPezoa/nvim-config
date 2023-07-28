# Vim / Nvim configuration

Hi there~

This repository is my nvim configuration files.
Long time ago, Maybe years i was looking how to improve mi coding when i steped into vim coding videos and the first thing that i thoght was "This is incredible dificult, maybe later".
Now today i can say that i'am a little more expert than yesterday, first starting with normal vim and some plugins, keymaps and configuration as i get familiar in the way of vim.

For now i want to save and share my current progress of my own personal nvim configuration with you all.


I'll do my best to guide you with:

- Windows Terminal (if you're using windows).
- Oh my posh.
- Fonts.
- Nvim instalation .
- Keymaps.
- Plugins.

# Installation.

## Terminal.
This step is for _windows_ only.

1. Go to "Microsoft Store".
2. Search for "Terminal".
3. Install "Windows Terminal" by Developer tools.

### Terminal - Oh my posh.

- Windows:

First install oh my posh using powershell.

```bash
winget install JanDeDobbeleer.OhMyPosh -s winget
```
Now we need to install the themes to look good by executing the following command in _powershell_.
```bash
Get-PoshThemes
```

To finish find the path of your terminal configuration by typing ___$PROFILE___ in the _powershell_ and paste the following code:

>"atomic.omp.json" is the theme that i use.

``` bash
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomic.omp.json" | Invoke-Expression
```


### Terminal - Fonts
First install [Nerd Fonts](https://www.nerdfonts.com/).

> I use _ComicShannsMono_ in my _powershell_ and you can find it in the _/fonts_ folder.

Next, we need to configure it by entering in the Terminal configuration file and paste the following json code:

```json
"defaults": {
    "font": {
        "face": "ComicShannsMono Nerd Font Mono"
    },
    "opacity": 65,
    "useAcrylic": true
}
```

## Nvim

1. Install normally nvim then copy the files into:

- Windows:

``` bash
%USERPROFILE%\AppData\Local\nvim
```

---

2. Now we need to install packer in the system.

- Windows:

``` bash
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

---

3. Then we have to install all plugins with the following comand.

``` bash
:PackerInstall
```

To use grep in telescope, install:

- Windows:

``` bash
winget install BurntSushi.ripgrep.MSVC
```
---
