Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
  config.vm.provision "shell", path: "bootstrap.sh", privileged: false
end
