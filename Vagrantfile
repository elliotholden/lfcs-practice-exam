Vagrant.configure("2") do |config|
	config.vm.define "home" do |home|
		home.vm.hostname = "home-1"
		home.vm.box = "lfcs-practice-exam-home"
		home.vm.network "private_network", type: "dhcp"
		home.ssh.private_key_path = "keys/lfcs_vagrant_key"
	end
	config.vm.define "myUbuntu" do |server1|
		server1.vm.hostname = "server1"	
		server1.vm.box = "ubuntu/trusty64"	
		server1.vm.network "private_network", type: "dhcp"
	end
end
