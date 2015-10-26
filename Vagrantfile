# Ubuntu box for running perentie, not dev box
Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    apt-get install clang-3.7 lldb-3.7
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh
  SHELL
end
