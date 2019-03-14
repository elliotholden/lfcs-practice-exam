Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.define "home" do |home|
    home.vm.hostname = "home"
    home.vm.network "private_network", ip: "1.2.3.4"
    home.vm.provider "virtualbox" do |vb|
      vb.name = 'lfcs-practice-exam_home'
      unless File.exist?('./storage/home_disk1.vmdk')
        vb.customize ['createmedium', '--filename', './storage/home_disk1.vmdk', '--format', 'VMDK', '--variant', 'Standard', '--size', 1024]
      end
      unless File.exist?('./storage/home_disk2.vmdk')
        vb.customize ['createmedium', '--filename', './storage/home_disk2.vmdk', '--format', 'VMDK', '--variant', 'Standard', '--size', 1024]
      end
      unless File.exist?('./storage/home_disk3.vmdk')
        vb.customize ['createmedium', '--filename', './storage/home_disk3.vmdk', '--format', 'VMDK', '--variant', 'Standard', '--size', 3 * 1024]
      end
      vb.customize ['storagectl', :id, '--name', 'SATA', '--add', 'sata']
      vb.customize ['storageattach', :id, '--storagectl', 'SATA', '--port', 0, '--device', 0, '--type', 'hdd', '--medium', './storage/home_disk1.vmdk']
      vb.customize ['storageattach', :id, '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', './storage/home_disk2.vmdk']
      vb.customize ['storageattach', :id, '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', './storage/home_disk3.vmdk']
    end
    home.vm.provision "Home", type: "ansible" do |a|
      a.playbook = "roles/home.yml"
    #  a.tags = "execute"
    end
  end
  config.vm.define "server1" do |s1|
    s1.vm.hostname = "server1"
    s1.vm.network "private_network", ip: "1.2.3.5"
    s1.vm.provider "virtualbox" do |v|
      v.name = 'lfcs-practice-exam_server1'
    end
    s1.vm.provision "Server1", type: "ansible" do |a|
      a.playbook = "roles/server1.yml"
    #  a.tags = "execute"
    end
  end
  config.vm.define "server2" do |s2|
    s2.vm.hostname = "server2"
    s2.vm.network "private_network", ip: "1.2.3.6"
    s2.vm.provider "virtualbox" do |v|
      v.name = 'lfcs-practice-exam_server2'
    end
    s2.vm.provision "Server2", type: "ansible" do |a|
      a.playbook = "roles/server2.yml"
    #  a.tags = "execute"
    end
  end
end
