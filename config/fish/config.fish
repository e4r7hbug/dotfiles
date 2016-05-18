# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "$HOME/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

fish_vi_mode

set PATH \
    "$HOME/bin" \
    "$HOME/.local/bin" \
    "$HOME/Library/Python/2.7/bin" \
    "$HOME/go/bin" \
        $PATH

set -x GOPATH "$HOME/go"

set fish_complete_path "$HOME/git/github.fish-pip-completion" $fish_complete_path

source /usr/share/autojump/autojump.fish
source /usr/local/share/autojump/autojump.fish
source (pew shell_config)
