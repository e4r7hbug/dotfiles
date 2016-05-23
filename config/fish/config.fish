fish_vi_mode

for word in "$HOME/"{bin,.local/bin,Library/Python/2.7/bin,go/bin}
    if not contains $word $PATH
        set PATH $word $PATH
    end
end

set -x GOPATH "$HOME/go"

set fish_complete_path "$HOME/git/github.fish-pip-completion" $fish_complete_path

source /usr/share/autojump/autojump.fish
source /usr/local/share/autojump/autojump.fish
source (pew shell_config)
