Install
=======

After install pip, installs virtualenv and virtualenvwrapper following this:

```
  sudo pip install git+https://github.com/dmvieira/virtualenvwrapper-extras.git
```

Edit ~/.bashrc or ~/.bash_profile file and include this line:

```
  source /usr/local/bin/virtualenvwrapperhack.sh
```

Edit /usr/local/bin/virtualenvwrapperhack.sh and change defaults:

```
  export WORKON_HOME=$HOME/.virtualenvs; # your virtualenvs dir
  export WORKSPACE="$HOME/workspace"; # your projects dir
```

Usage
=====

There are two actions:

```
  mkhack your_env (mandatory) folder_to_go (opional)
```

where you create a new virtualenv and a folder with its name in your workspace dir. Then, it activates virtualenv and go to folder.

If folder_to_go is defined, then it creates folder_to_go folder inside your workspace, activates virtualenv and go to folder.

```
  hackon your_env (mandatory) folder_to_go (opional)
```

where you can activate your virtualenv and change to your_env folder or folder_to_go.
