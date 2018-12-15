Vagrant.configure("2") do |config|
	config.vm.define "home" do |home|
		home.vm.hostname = "home1"
		home.vm.box = "lfcs-home"
		home.vm.network "private_network", type: "dhcp"
	end
	config.vm.define "server1" do |server1|
		server1.vm.hostname = "server1"	
		server1.vm.box = "ubuntu/trusty64"	
		server1.vm.network "private_network", type: "dhcp"
	end
end
