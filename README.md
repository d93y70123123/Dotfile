# Dotfile 管理

## 什麼是 Dotfile

1. Dotfile 是指在 Unix-like 系統中，檔名以 `.` 開頭的檔案，例如 `.bashrc`、`.zshrc`、`.vimrc` 等等。
2. Dotfile 通常用來設定使用者環境，例如設定 shell 的環境變數、設定編輯器的外觀等等。

## Dotfile 管理工具

1. [GNU Stow](https://www.gnu.org/software/stow/)
2. [CHEZMOI](https://www.chezmoi.io/)

## Dotfile 管理範例

需要管理的 Dotfile：

1. `.vimrc`
2. `.tmux.conf`
3. `.config/nvim`
4. `Brewfile`
5. `.p10k.zsh`
6. `zshrc`


管理方式：使用 Chezmoi 管理 Dotfile

1. 安裝 Chezmoi

```bash
brew install chezmoi
```

2. 初始化 Chezmoi

```bash
chezmoi init
```

3. 設定 Git Repository

```bash
chezmoi cd
git init
git remote add origin
```

4. 設定 Dotfile

```bash
chezmoi add ~/.vimrc
chezmoi add ~/.tmux.conf
chezmoi add ~/.config/nvim
chezmoi add ~/Brewfile
chezmoi add ~/.p10k.zsh
chezmoi add ~/.zshrc
```

5. Commit Dotfile

```bash
chezmoi cd
git add .
git commit -m "Initial commit"
git push origin master
```

6. 更新 Dotfile

```bash
chezmoi update
```

7. 恢復 Dotfile

```bash
chezmoi diff
chezmoi apply
```

## 遷移到新的機器

1. 安裝 Chezmoi

```bash
brew install chezmoi
```

2. Clone Dotfile Repository

```bash
chezmoi init --apply <repository>
```

3. 更新 Dotfile

```bash
chezmoi update
```

4. 恢復 Dotfile

```bash
chezmoi diff
chezmoi apply
```

