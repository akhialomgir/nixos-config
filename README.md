# README

## Deployment

```sh
git clone https://github.com/akhialomgir/nixos-config.git ~/_nixos-config
sudo mv /etc/nixos /etc/nixos.bak  # backup
sudo ln -s ~/_nixos-config/ /etc/nixos
sudo nixos-rebuild switch
```