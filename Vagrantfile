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
    apt-get install -y --force-yes subversion
    apt-get install -y --force-yes sbt
    apt-get install -y --force-yes unzip
    apt-get install -y --force-yes mercurial
    apt-get install -y --force-yes python3-pip
    apt-get install -y --force-yes python3-lxml

    # clang 3.7 install
    wget --no-check-certificate http://llvm.org/releases/3.7.1/clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
    tar xvf clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz
    cd clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04/
    cp -R * /usr/local
    cd -

    # z3 install
    wget --no-check-certificate https://github.com/Z3Prover/z3/releases/download/z3-4.4.1/z3-4.4.1-x64-ubuntu-14.04.zip
    unzip z3-4.4.1-x64-ubuntu-14.04.zip
    cd z3-4.4.1-x64-ubuntu-14.04/
    cp -R * /usr/local
    cd -

    # java install
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh

    # smtinterpol install
    wget --no-check-certificate https://ultimate.informatik.uni-freiburg.de/smtinterpol/smtinterpol.jar && mv smtinterpol.jar /usr/bin/.

    # benchexec install (or just "pip3 install benchexec" for stable version)
    pip3 install git+https://github.com/sosy-lab/benchexec.git

    # benchexec group support
    mount -t cgroup none /sys/fs/cgroup
    chmod o+wt '/sys/fs/cgroup/'

    # Install benchexec source to get mergeBenchmarkSets.py
    git clone --depth 1 git://github.com/sosy-lab/benchexec.git

    # install svcomp benchmark programs
    git clone --depth 1 https://github.com/dbeyer/sv-benchmarks.git
    chown -R vagrant:vagrant sv-benchmarks

    # Link benchmarks to / so ../sv-benchmarks paths used in SV-COMP work from /vagrant
    ln -s /home/vagrant/sv-benchmarks/ /

    # install CPAchecker
    svn checkout https://svn.sosy-lab.org/software/cpachecker/trunk cpachecker
    cd cpachecker
    ant
    chown -R vagrant:vagrant .
    cd -

  SHELL
end
