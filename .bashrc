alias vi=nvim

fzf_cd() {
	local dir
	dir=$(find . -type d -not -path "*/\.*" | fzf) && cd "$dir" && echo "CDed into $dir"
}

bind -x '"\C-f": fzf_cd'
