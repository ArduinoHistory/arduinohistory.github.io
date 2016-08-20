
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "jekyll"

  # Fix the "ssh" forwarded port to be active on all interfaces.
  # (default is for 127.0.0.1 only)
  config.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", auto_correct: true
  config.vm.network "forwarded_port", guest: 8888, host: 8888, auto_correct: true

  config.vm.provision "shell", path: "bootscript.sh"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
end
