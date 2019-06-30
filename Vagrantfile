Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.3"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision :shell, path: "provision/provision.sh"
  config.vm.provision :shell, path: "provision/Utilities/install.sh"
  config.vm.provision :shell, path: "provision/Git/install.sh"
  config.vm.provision :shell, path: "provision/Java/install.sh"
  config.vm.provision :shell, path: "provision/PostgreSQL/install.sh"
  config.vm.provision :shell, path: "provision/Docker/install.sh"
  config.vm.provision "shell", path: "setup/setup.sh", run: "always"
end