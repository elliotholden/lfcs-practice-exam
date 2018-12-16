Vagrant.configure("2") do |config|
	config.vm.define "myhome" do |home|
		home.vm.hostname = "elliot-home1"
		home.vm.box = "home1"
		home.vm.network "private_network", type: "dhcp"
		home.ssh.private_key_path = "keys/lfcs_vagrant_key"
	end
	#config.vm.define "server1" do |server1|
	#	server1.vm.hostname = "server1"	
	#	server1.vm.box = "ubuntu/trusty64"	
	#	server1.vm.network "private_network", type: "dhcp"
	#end
end
