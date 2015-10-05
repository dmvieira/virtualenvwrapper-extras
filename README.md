# VirtualEnvWrapper-extras

## Install


After install pip, install virtualenv, virtualenvwrapper and extras automatically following this:

```
  sudo pip install git+https://github.com/dmvieira/virtualenvwrapper-extras.git
```
or for local install

```
  pip install --user git+https://github.com/dmvieira/virtualenvwrapper-extras.git
```
Edit ~/.bashrc or ~/.bash_profile file and include this line:

```
  source /usr/local/bin/virtualenvwrapperhack.sh
```
or for local install

```
  source $HOME/.local/bin/virtualenvwrapperhack.sh
```

Edit /usr/local/bin/virtualenvwrapperhack.sh and change defaults:

```
  export WORKON_HOME=$HOME/.virtualenvs; # your virtualenvs dir
  export WORKSPACE="$HOME/workspace"; # your projects dir
```

## Usage

There are two possible actions: **make** and **use** virtualenv

### Make new VirtualEnv and work on it

```
  mkhack your_env (mandatory) folder_to_go (optional)
```

where you create a new virtualenv and a folder with its name in your workspace dir. Then, it activates virtualenv and go to folder.

If folder_to_go is defined, then it creates folder_to_go folder inside your workspace, activates virtualenv and go to folder.

### Use VirtualEnv

```
  hackon your_env (mandatory) folder_to_go (optional)
```

where you can activate your virtualenv and change to your_env folder or folder_to_go.
