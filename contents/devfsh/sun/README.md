vagrant box add laravel/homestead 
cd ~/.vagrant.d/boxes/laravel-VAGRANTSLASH-homestead
mv 0 6.4.0
vagrant box list
echo $'https://atlas.hashicorp.com/laravel/homestead' > metadata_url

