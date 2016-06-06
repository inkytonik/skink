# Ubuntu box for running Skink, not dev box
Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: <<-SHELL
    echo 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu trusty main' >> /etc/apt/sources.list
    echo 'deb-src http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu trusty main' >> /etc/apt/sources.list
    echo 'deb https://dl.bintray.com/sbt/debian /' >> /etc/apt/sources.list
    apt-get update

    # tool install    
    apt-get install -y --force-yes git
    apt-get install -y --force-yes sbt
    apt-get install -y --force-yes unzip
    apt-get install -y --force-yes mercurial

    # clang 3.7 install
    wget --no-check-certificate http://llvm.org/releases/3.7.1/clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
    tar xvf clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz 
    cd clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04/
    cp -R * /usr/local
    cd -

    # z3 install
    wget --no-check-certificate https://github.com/Z3Prover/z3/releases/download/z3-4.4.1/z3-4.4.1-x64-ubuntu-14.04.zip
    unzip z3-4.4.1-x64-ubuntu-14.04.zip
    mv z3-4.4.1-x64-ubuntu-14.04/ z3
    echo "export PATH=$PATH:/home/vagrant/z3/bin" >> ~/.profile

    # install svcomp benchmark programs
    # TODO: get this back > git clone --depth 1 https://github.com/dbeyer/sv-benchmarks.git

    # java install
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh

    #smtinterpol install
    wget --no-check-certificate https://ultimate.informatik.uni-freiburg.de/smtinterpol/smtinterpol.jar && mv smtinterpol.jar /usr/bin/.

    #prep for skink
    echo "export OPT=opt" >> ~/.profile
  SHELL
end
