# Dotfile 管理

## 什麼是 Dotfile

1. Dotfile 是指在 Unix-like 系統中，檔名以 `.` 開頭的檔案，例如 `.bashrc`、`.zshrc`、`.vimrc` 等等。
2. Dotfile 通常用來設定使用者環境，例如設定 shell 的環境變數、設定編輯器的外觀等等。

## Dotfile 管理工具

1. [GNU Stow](https://www.gnu.org/software/stow/)
2. [chezmoi](https://www.chezmoi.io/)
3. [yadm](https://yadm.io/)
4. [rcm](https://thoughtbot.github.io/rcm/)

## Dotfile 管理範例

需要管理的 Dotfile：

1. `.bashrc`
2. `.bash_profile`
3. `.vimrc`
4. `.vim/`
5. `.tmux.conf`
6. `.config/nvim`


管理方式：使用 Chezmoi 管理 Dotfile

1. 建立 Dotfile 目錄


