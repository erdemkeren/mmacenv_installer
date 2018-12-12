Various scripts that installs my development environment.

# How to use

First, clone the repository

```bash
git clone https://github.com/erdemkeren/mmacenv_installer.git
```

Than source the main file:

```bash
cd mmacenv_installer && source installers
```

This will add the installer functions to your bash session and then,
show a list of possible installation functions.

Like

```
>> You can run one of:
 - create_dev_directory
 - install_brew
 - install_wget
 - install_iterm2
 - install_oh_my_zsh
 - install_atom
 - install_phpstorm_2016_1_2
 - install_virtual_box
 - install_vagrant
 - install_homestead
 - install_redis
 - install_npm
 - install_yarn
 - install_snazzy
 - install_pure_prompt
 - install_slack
 - install_rescuetime
 - install_toptracker
 - install_alfred
 - install_mmacenv (will install all)
```

# Dev Directory

To see the directory hierarchy of my dev_directory (created by create_dev_directory), check:
[https://github.com/erdemkeren/mmacenv_installer/tree/master/contents/devfsh](https://github.com/erdemkeren/mmacenv_installer/tree/master/contents/devfsh)

It will be cloned inside ~/dev
