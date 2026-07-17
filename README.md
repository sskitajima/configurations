# configurations

System-wide configurations for my development environment(e.g. VSCode, zsh, tmux, vimium, etc.) 

## vscode settings

Collection of vscode settings files to reuse the settings across PCs.

## Export

```
code --list-extensions > vscode_extension_list.txt
```

## Import

```
PowerShell -ExecutionPolicy RemoteSigned "install_extension.ps1" "vscode_extension_list.txt"
```

## Reference

- https://qiita.com/kent-u/items/0f6de3f7526a1ec7eb7e


