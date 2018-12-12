if vagrant box add laravel/homestead does not work or complete for some reason,

wget box and add manually:

```bash
vagrant box add laravel/homestead
```

That will break update feature. Fix like:

```bash
cd ~/.vagrant.d/boxes/laravel-VAGRANTSLASH-homestead
mv 0 6.4.0
echo $'https://atlas.hashicorp.com/laravel/homestead' > metadata_url
```
