fish_vi_key_bindings


set fish_user_paths "$HOME/"{.local/bin,.local/go/bin,go/bin,node_modules/.bin,.gem/ruby/*/bin,.cargo/bin}

set -x GPG_TTY (tty)
set -x EDITOR nvim

set fish_complete_path "$HOME/git/github.fish-pip-completion" $fish_complete_path

switch (uname)
    case Linux
        source /usr/share/autojump/autojump.fish
    case Darwin
        source /usr/local/share/autojump/autojump.fish

	set --append fish_user_paths /usr/local/sbin
end

source (pew shell_config)
