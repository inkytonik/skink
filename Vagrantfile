# Ubuntu box for running Skink, not dev box
Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", inline: <<-SHELL
    echo 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main' >> /etc/apt/sources.list
    echo 'deb-src http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main' >> /etc/apt/sources.list
    echo 'deb https://dl.bintray.com/sbt/debian /' >> /etc/apt/sources.list
    echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
    apt-get update

    # tool install
    apt-get install -y git
    apt-get install -y sbt
    apt-get install -y unzip
    apt-get install -y mercurial
    apt-get install -y python3-pip
    apt-get install -y sbt

    # clang 3.7 install
    apt-get install -y --allow-unauthenticated llvm-3.7-dev
    apt-get install -y --allow-unauthenticated clang-3.7
    ln -s /usr/bin/clang-3.7 /usr/bin/clang
    ln -s /usr/bin/opt-3.7 /usr/bin/opt

    # z3 install (on the 7th Nov 2016 this is installing 4.4.1)
    apt-get install -y --allow-unauthenticated z3

    # java install
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh

    # smtinterpol install
    wget --no-check-certificate https://ultimate.informatik.uni-freiburg.de/smtinterpol/smtinterpol.jar && mv smtinterpol.jar /usr/bin/.

    # benchexec install
    pip3 install benchexec
    mount -t cgroup none /sys/fs/cgroup
    chmod o+wt '/sys/fs/cgroup/'

    # install svcomp benchmark programs
    git clone --depth 1 https://github.com/dbeyer/sv-benchmarks.git
    chown -R vagrant:vagrant sv-benchmarks

  SHELL
end
