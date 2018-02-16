# boot-repair
script para reparar  o grub do fedora,  utilizando live cd do fedora  


atribuindo permissão ao arquivo.
```bash
  sudo chmod +x pwd/boot-repair.sh
```
caso aconteça erro de montagem, bad block. modifique a linha 9 do script
de 
```bash 
mount /dev/sda1 /mnt/fedora/boot
``` 
para

```bash 
mount /dev/sda2 /mnt/fedora/boot
``` 
