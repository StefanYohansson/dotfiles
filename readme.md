<p align="center">
  <b>Snotr's.dotfiles</b>
  <br><br>
  <img width="45" src="https://raw.githubusercontent.com/StefanYohansson/sz-dotfiles/master/8bheart.png">
</p>

#### Installation

```
  $ ./setup.sh --install-deps
  $ ./rust.sh
  $ ./node.sh
  $ ./git.sh --user StefanYohansson --email sy.fen0@gmail.com --github StefanYohansson
  $ ./vim.sh
```

```
  # ./arch.sh # it doesn't execute missing.sh
  # ./direnv.sh
```

#### Arch Folder

Please take care installing things from `missing.sh`, it's just a dump from what's installed on my computer when I made this file and you'll accidently install my drivers plus useless things for you.

`yaourt -Q | awk '{print $1}' | cut -d '/' -f 2 | tr '\n' ' ' | awk '{print "yaourt -S " $0}' > missing.sh`

#### Requirements

* git
* jq
* vim
* curl
