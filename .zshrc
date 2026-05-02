# 1. Плагины
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# plugins=(git zsh-syntax-highlighting)

# 2. Логотип при запуске
fastfetch

# 3. Алиасы
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias checkin='nvidia-smi -q -d POWER | grep "Limit"; cpupower frequency-info | grep "governor"'
alias cleaner='sudo pacman -Rns $(pacman -Qtdq); sudo paccache -r; sudo journalctl --vacuum-size=100M; rm -rf ~/.cache/*'
alias update='sudo pacman -Syu && yay -Syu'

# 4. Внешний вид
PROMPT='[%n@%m %1~] %# '

# 5. Умная история (поиск по стрелочкам)
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

lazygit() {
    git add .
    git commit -m "$1"
    git push
}
