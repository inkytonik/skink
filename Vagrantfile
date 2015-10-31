# Ubuntu box for running perentie, not dev box
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: <<-SHELL
    echo 'deb http://cvc4.cs.nyu.edu/debian/ unstable/' >> /etc/apt/sources.list
    echo 'deb-src http://cvc4.cs.nyu.edu/debian/ unstable/' >> /etc/apt/sources.list
    echo 'deb http://cvc4.cs.nyu.edu/debian/ stable/' >> /etc/apt/sources.list
    echo 'deb-src http://cvc4.cs.nyu.edu/debian/ stable/' >> /etc/apt/sources.list
    echo 'deb http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.7 main' >> /etc/apt/sources.list
    echo 'deb-src http://llvm.org/apt/trusty/ llvm-toolchain-trusty-3.7 main' >> /etc/apt/sources.list
    echo 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu trusty main' >> /etc/apt/sources.list
    echo 'deb-src http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu trusty main' >> /etc/apt/sources.list
    apt-get update

    # tool install    
    apt-get install -y --force-yes git
    apt-get install -y --force-yes make
    apt-get install -y --force-yes python3-pip

    #cvc4 install
    apt-get install -y --force-yes cvc4

    # clang 3.7 install
    apt-get install -y --force-yes clang-3.7 lldb-3.7

    # z3 install
    export CC=clang-3.7
    export CXX=clang++-3.7
    git clone https://github.com/Z3Prover/z3.git && cd z3 && python scripts/mk_make.py && cd build; make && sudo make install

    # java install
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh

    #smtinterpol install
    wget --no-check-certificate https://ultimate.informatik.uni-freiburg.de/smtinterpol/smtinterpol.jar && mv smtinterpol.jar /usr/bin/.
 
    # benchexex install
    pip3 install benchexec
    mount -t cgroup none /sys/fs/cgroup
    chmod o+wt '/sys/fs/cgroup/'
  SHELL
end
