# dotfiles
Various dotfiles and other defaults for my environment.


## Ansible

The trickiest part of bootstrapping a machine before being able to run the
machine initializer will be to get Ansible installed. This can be through a
package manager, or if Python is available with `pip`, then use `pip install
ansible`. Run machine initializer with basic Ansible Playbook command.

```bash
cd ansible
ansible-playbook -i local main.yml

# If launch error mentions ssh, use connection override
ansible-playbook -i local -c local main.yml
```
