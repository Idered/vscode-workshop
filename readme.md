## New file

Extension: https://marketplace.visualstudio.com/items?itemName=fayras.simple-new-file
Keybinding:

```json
[
  {
    "key": "ctrl+n",
    "command": "extension.simpleNewFile",
    "when": "editorTextFocus"
  }
]
```

## View

| Description              | Windows       | Mac           | Is custom |
| ------------------------ | ------------- | ------------- | --------- |
| Show file explorer       | ctrl+shift+e  | cmd+shift+e   |           |
| Show extensions panel    | ctrl+shift+x  | cmd+shift+x   |           |
| Show global search panel | ctrl+shift+f  | cmd+shift+f   |           |
| Hide sidebar             | ctrl+k ctrl+b | ctrl+k ctrl+b | True      |

Keybinding:

```json
[
  {
    "key": "ctrl+k ctrl+b",
    "command": "workbench.action.toggleSidebarVisibility"
  }
]
```

## Selection

| Description                 | Windows          | Mac                | Is custom |
| --------------------------- | ---------------- | ------------------ | --------- |
| Jump by word                | ctrl+right/left  | option+left/right  |           |
| Select word on the left     | ctrl+shift+left  | option+shift+left  |           |
| Select word on the right    | ctrl+shift+right | option+shift+right |           |
| Move line up                | alt+up           | option+up          |           |
| Move line down              | alt+down         | option+down        |           |
| Duplicate line up           | alt+shift+up     | option+shift+up    |           |
| Duplicate line down         | alt++shift+down  | option+shift+down  |           |
| Fast scroll                 | alt+scroll       | option+scroll      |           |
| Expand selection scope      | alt+shift+right  | ctrl+shift+right   |           |
| Narrow selection scope      | alt+shift+left   | ctrl+shift+left    |           |
| Open recent workspace       | ctrl+t           | ctrl+r             |           |
| Select to the start of line | fn+shift+left    | cmd+shift+left     |           |
| Select to the end of line   | fn+shift+right   | cmd+shift+right    |           |
| Open symbols list           | ctrl+shift+o     | cmd+shift+o        |           |
| Select word                 | ctrl+d           | cmd+d              |           |
| Omit current word selection | ctrl+k ctrl+d    | cmd+k cmd+k        |           |
| Select all occurrences      | ctrl+shift+l     | cmd+shift+l        |           |
| Remove current line         | ctrl+shift+k     | cmd+shift+k        |           |
| Focus breadcrumbs           | ctrl+;           | cmd+;              | True      |
| Increment number by 1       | ctrl+up          | cmd+up             | True      |
| Decrement number by 1       | ctrl+down        | cmd+down           | True      |
| Go to last edit location    | shift+space      | shift+space        | True      |

Keybindings:

```json
[
  {
    "key": "shift+space",
    "command": "workbench.action.navigateToLastEditLocation"
  },
  {
    "key": "ctrl+oem_1",
    "command": "breadcrumbs.focusAndSelect"
  },
  {
    "key": "ctrl+up",
    "command": "editor.emmet.action.incrementNumberByOne"
  },
  {
    "key": "ctrl+down",
    "command": "editor.emmet.action.decrementNumberByOne"
  }
]
```

## Terminal

| Description            | Windows                    | Mac                        | Is custom |
| ---------------------- | -------------------------- | -------------------------- | --------- |
| Clear terminal         | ctrl+l                     | ctrl+l                     |           |
| Search recent commands | ctrl+r                     | ctrl+r                     |           |
| Cancel input           | ctrl+c                     | ctrl+c                     |           |
| Jump by word           | ctrl+left/right            | option+left/right          |           |
| Close terminal tab     | ctrl+w                     | ctrl+w                     | True      |
| New Terminal tab       | ctrl+t                     | ctrl+t                     | True      |
| Toggle terminal        | alt+\`                     | option+\`                  | True      |
| Focus next terminal    | alt+right or ctrl+tab      | alt+right or ctrl+tab      | True      |
| Focus prev terminal    | alt+left or ctrl+shift+tab | alt+left or ctrl+shift+tab | True      |

## Git

Extension: https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens

| Description   | Windows          | Mac              | Is custom |
| ------------- | ---------------- | ---------------- | --------- |
| Pull          | alt+enter        | option+enter     | True      |
| Push          | ctrl+shift+enter | ctrl+shift+enter | True      |
| Commit        | ctrl+enter       | ctrl+enter       | True      |
| Change branch | ctrl+b           | ctrl+b           | True      |

## Install direnv

- 0. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- 1. `brew install direnv`
- 2. `echo "source ~/.bashrc" >> ~/.profile`
- 3. `source ~/.bashrc`

## Install nvs

`export NVS_HOME="$HOME/.nvs"`
`git clone https://github.com/jasongin/nvs "$NVS_HOME"`
`. "$NVS_HOME/nvs.sh" install`
`nvs add node/lts`
`nvs link lts`

## Install lsd

`brew install lsd`
`brew tap homebrew/cask-fonts`
`brew cask install font-hack-nerd-font`

Add to VS Code settings:
`"terminal.integrated.fontFamily": "Hack Nerd Font"`
