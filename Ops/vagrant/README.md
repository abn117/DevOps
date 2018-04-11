# Vagrant

# Requirements
  * Vagrant
  * VirtualBox

### Vagrant installation on Ubuntu 16.04 LTS  
* Go on [vagrant download page by HashiCorp]('https://www.vagrantup.com/downloads.html') and chose the version for `Debian OS` .
* Go on the download directory and double click or run with the console `sudo dpkg -i vagrant_2.x.x_x86_64.deb` .
  * If you get a `dependency error` execute `sudo apt-get -f install` .
* Execute in a console `vagrant -v`for check if everything successed.  

### Vagrantfile initialization
* To your download extraction directory execute `vagrant init` for initializate a Vagrantfile.
  * For more information about Vagrantfile configuration please follow this link [Here]('https://www.vagrantup.com/docs/vagrantfile/') :link:

### VirtualBox installation on Ubuntu 16.04 LTS
* Go on [Oracle download page]('https://www.virtualbox.org/wiki/Downloads') and chose `Linux distributions` > `Ubuntu 16.04 ("Xenial")` .
* Go on the download directory and double click or run with the console `sudo dpkg -i virtualbox-5.x.x~Ubuntu~xenial_amd64.deb` .
  * If you get a `dependency error` execute `sudo apt-get -f install` .

# Some useful Vagrant commands  

#### Add vagrand box
  > vagrant box add `[box_name]` `[url_name]`

#### Remove vagrant box
  > vagrant box remove `[box_name]`

#### List all vagrant box
  > vagrant box list

#### Lunch ssh into vagrant machine
  > vagrant ssh

#### Stop vagrant machine
  > vagrant halt

#### Provision for applicate change on vagrant machine
  > vagrant reload --provision
