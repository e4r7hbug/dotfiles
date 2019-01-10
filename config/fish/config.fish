fish_vi_key_bindings

set fish_user_paths "$HOME/"{.local/bin,.local/go/bin,go/bin,node_modules/.bin,.gem/ruby/*/bin}

set -x GOPATH "$HOME/go"
set -x GOROOT "$HOME/.local/go"
set -x GPG_TTY (tty)

set fish_complete_path "$HOME/git/github.fish-pip-completion" $fish_complete_path

switch (uname)
    case Linux
        source /usr/share/autojump/autojump.fish
    case Darwin
        source /usr/local/share/autojump/autojump.fish
        for word in {"$HOME/Library/Python/3.5/bin",/usr/local/sbin}
            if not contains $word $PATH
                set PATH $word $PATH
            end
        end
end
source (pew shell_config)
