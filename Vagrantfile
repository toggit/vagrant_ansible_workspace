# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "centos/7"

  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"

  vm1.vm.network "public_network"
    # adapter: "2",
    # bridge: "Realtek PCIe GBE Family Controller #2", 
    # auto_config: false,
    # ip: "10.100.102.20"

    vm1.vm.synced_folder ".", "/home/vagrant/sync/"

    vm1.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end

    # default router
    # config.vm.provision "shell",# type: "dhcp"
    #   run: "always",
    #   inline: "route add default gw 10.100.102.120"

  
    vm1.vm.provision "shell", 
      path: "bootstrap.sh"
      # run: "always"

    config.vm.provision "shell", inline: <<-SHELL
      cp /home/vagrant/sync/ansible-demo/ansible.cfg.demo /home/vagrant/.ansible.cfg
      chmod 664 /home/vagrant/.ansible.cfg
    SHELL
  end
end
