fish_vi_key_bindings

for word in "$HOME/"{bin,.local/bin,Library/Python/2.7/bin,go/bin}
    if not contains $word $PATH
        set PATH $word $PATH
    end
end

set -x GOPATH "$HOME/go"

set fish_complete_path "$HOME/git/github.fish-pip-completion" $fish_complete_path

switch (uname)
    case Linux
        source /usr/share/autojump/autojump.fish
    case Darwin
        source /usr/local/share/autojump/autojump.fish
end
source (pew shell_config)
