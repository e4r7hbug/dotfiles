# dotfiles

Various dotfiles and other defaults for my environment. Clone this repository to
`~/.dotfiles` to use with https://github.com/thoughtbot/rcm.

```bash
git clone https://github.com/e4r7hbug/dotfiles.git ~/.dotfiles
```


## Usage

The dotfiles have been arranged to work with https://github.com/thoughtbot/rcm
to make usage easier and a little more organized. Assuming this repository is
located as the default directory at `~/.dotfiles/`:

```bash
# Show what will be linked
lsrc

# Link up the dotfiles
rcup -v

# Add new dotfiles to the default directory
mkrc ~/.dotfile
```


## Ansible

The trickiest part of bootstrapping a machine before being able to run the
machine initializer will be to get Ansible installed. This can be through a
package manager, or if Python is available with `pip`, then use `pip install
ansible`. Run machine initializer with basic Ansible Playbook command.

```bash
cd tags-ansible
ansible-playbook -i local main.yml

# If launch error mentions ssh, use connection override
ansible-playbook -i local -c local main.yml

# If play fails with sudo password required, use --ask-become-pass option
ansible-playbook -i local -K main.yml
```
