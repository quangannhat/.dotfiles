alias vi=nvim
alias lg=lazygit

fzf_cd() {
	local dir
	dir=$(find . -type d -not -path "*/\.*" -not -path "*/node_modules*" | fzf)  && tmux new-session -c $dir
}

bind -x '"\C-f": fzf_cd'

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
