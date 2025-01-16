# README

## Deployment

```sh
git clone https://github.com/akhialomgir/nixos-config.git ~/nixos-config
sudo mv /etc/nixos /etc/nixos.bak  # backup
sudo ln -s ~/nixos-config/ /etc/nixos
sudo nixos-rebuild switch
```