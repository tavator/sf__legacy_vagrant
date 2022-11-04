Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  config.vm.hostname = "postgresql84"
  config.vm.provision "shell", path: "provision.sh"
end