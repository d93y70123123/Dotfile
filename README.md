# Dotfile 管理

## 什麼是 Dotfile

1. Dotfile 是指在 Unix-like 系統中，檔名以 `.` 開頭的檔案，例如 `.bashrc`、`.zshrc`、`.vimrc` 等等。
2. Dotfile 通常用來設定使用者環境，例如設定 shell 的環境變數、設定編輯器的外觀等等。

## Dotfile 管理工具

1. [GNU Stow](https://www.gnu.org/software/stow/)
    自動建立符號連結，將 Dotfile 放在特定目錄下，通常放在 `~/dotfile` ，再使用 Stow 將 Dotfile 軟連結到使用者目錄下。
2. [CHEZMOI](https://www.chezmoi.io/)
    將檔案複製到特定目錄下，通常放在 `~/.local/share/chezmoi` ，再使用 Chezmoi 管理 Dotfile。

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
    chezmoi cd # 切換到 會自動進入到 chezmoi 的目錄
    git add .
    git commit -m "Initial commit"
    git push origin master
    ```

## 遷移到新的機器

在新的機器上，只需要安裝 Chezmoi，然後 Clone Dotfile Repository 即可。

需求：

1. 安裝 Homebrew
2. 安裝 Git
3. 安裝 Chezmoi

步驟：

1. 安裝 Chezmoi

    ```bash
    brew install chezmoi
    ```

2. Clone Dotfile Repository

    ```bash
    chezmoi init --apply <repository>
    ```

3. 更新 Dotfile
    使用前注意有沒有會覆蓋掉的東西
    或是可以使用 4. 的方式，手動恢復 Dotfile

    ```bash
    chezmoi update
    ```

4. 恢復 Dotfile

    ```bash
    chezmoi diff
    chezmoi apply
    ```

## 日常操作

1. 刪除已添加的 Dotfile

    ```bash
    chezmoi forget ~/.vimrc
    ```

2. 修改 Source Dotfile

    除了直接修改 `~/.vimrc` 之外，也可以使用 Chezmoi 來修改。

    ```bash
    chezmoi edit ~/.vimrc
    ```

3. 確認 Source 與 Target 的差異

    ```bash
    chezmoi diff
    ```

4. 重新添加 Dotfile

    如果手動修改了 Dotfile，可以使用 `re-add` 重新添加。

    ```bash
    chezmoi re-add ~/.vimrc
    ```

    或是全部重新添加

    ```bash
    chezmoi update
    ```

```bash
chezmoi add ~/.config/nvim
chezmoi add ~/.tmux.conf
chezmoi add ~/.vimrc
chezmoi add ~/.zshrc
chezmoi add ~/.p10k.zsh

brew bundle dump --describe --force
chezmoi add ~/.config/Brewfile
```

## 問題排查

問題1：修改配置後，會出現錯誤

`chezmoi: warning: config file template has changed, run chezmoi init to regenerate config file`

解決方法：重新初始化 Chezmoi

```bash
chezmoi init
```

## 參考資料

1. [Dotfile](https://wiki.archlinux.org/index.php/Dotfiles)
2. [Chezmoi](https://www.chezmoi.io/quick-start/)
3. [GNU Stow](https://www.gnu.org/software/stow/)
4. [Chezmoi：優雅管理Linux的dotfile，使用Git儲存庫備份，類似GNU Stow](https://ivonblog.com/posts/chezmoi-manage-dotfiles/)
