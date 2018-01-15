Vagrant.configure(2) do |config|

  config.vm.box = "centos/7"

  config.vm.define :bastionhost do |bh|
    bh.vm.provider "virtualbox" do |vb|
       vb.memory = "1024"
    end
    bh.vm.provision "shell", path: "./scripts/install-ansible.sh"
    bh.vm.hostname = "bastion.stone"
    bh.vm.network "private_network", ip: "192.168.100.7", virtualbox__intnet: "cmnet"
  end

  config.vm.define :m1 do |m1|
    m1.vm.hostname = "m1.stone"
    m1.vm.network "private_network", ip: "192.168.100.11", virtualbox__intnet: "cmnet"
    m1.vm.network "forwarded_port", guest: 80, host: 8081  # nginx
  end
  config.vm.define :m2 do |m2|
    m2.vm.hostname = "m2.stone"
    m2.vm.network "private_network", ip: "192.168.100.12", virtualbox__intnet: "cmnet"
    m2.vm.network "forwarded_port", guest: 80, host: 8082  # nginx
  end
   config.vm.define :m3 do |m3|
    m3.vm.hostname = "m3.stone"
    m3.vm.network "private_network", ip: "192.168.100.13", virtualbox__intnet: "cmnet"
    m3.vm.network "forwarded_port", guest: 80, host: 8080  # nginx
   end

end
