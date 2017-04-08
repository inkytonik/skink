# Ubuntu box for running Skink, not dev box
Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", inline: <<-SHELL
    # Add launchpad package sources (for things like git)
    echo 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main' >> /etc/apt/sources.list
    echo 'deb-src http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main' >> /etc/apt/sources.list
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 1E9377A2BA9EF27F

    # Add sbt package sources
    echo 'deb https://dl.bintray.com/sbt/debian /' >> /etc/apt/sources.list
    # echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 99E82A75642AC823

    # Add LLVM package sources
    echo 'deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-4.0 main' >> /etc/apt/sources.list
    wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -

    # Make sure we have the most recent package list
    apt-get update

    # tool install
    apt-get install -y git
    apt-get install -y subversion
    apt-get install -y sbt
    apt-get install -y unzip
    apt-get install -y mercurial
    apt-get install -y python3-pip

    # clang 4.0 install
    apt-get install -y llvm-4.0-dev
    apt-get install -y clang-4.0
    ln -s /usr/bin/clang-4.0 /usr/bin/clang
    ln -s /usr/bin/opt-4.0 /usr/bin/opt

    # z3 install (on the 7th Nov 2016 this is installing 4.4.1)
    apt-get install -y --allow-unauthenticated z3

    # Make local bin for any custom installs
    mkdir -p /home/ubuntu/bin

    # java install
    wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh

    # smtinterpol install
    wget --no-check-certificate https://ultimate.informatik.uni-freiburg.de/smtinterpol/smtinterpol.jar && mv smtinterpol.jar /usr/bin/.

    # benchexec install (or just "pip3 install benchexec" for stable version)
    pip3 install git+https://github.com/sosy-lab/benchexec.git

    # benchexec group support
    chmod o+wt,g+w /sys/fs/cgroup/{cpu\,cpuacct/user.slice,cpuset,freezer,memory/user.slice}

    # Install benchexec source to get mergeBenchmarkSets.py
    git clone --depth 1 git://github.com/sosy-lab/benchexec.git

    # install svcomp benchmark programs
    git clone --depth 1 https://github.com/dbeyer/sv-benchmarks.git
    chown -R ubuntu:ubuntu sv-benchmarks

    # Link benchmarks to / so ../sv-benchmarks paths used in SV-COMP work from /vagrant
    ln -s /home/ubuntu/sv-benchmarks/ /

    # Make Test.set available in benchmarks folder so its paths are relative to there
    ln -s /vagrant/Test.set /sv-benchmarks/c/Test.set

    # Download binary CPAchecker distribution and link to known path
    wget --no-check-certificate \
      https://cpachecker.sosy-lab.org/CPAchecker-1.6.12-svcomp17-unix.tar.bz2
    tar xvjf CPAchecker-1.6.12-svcomp17-unix.tar.bz2
    ln -s CPAchecker-1.6.12-svcomp17-unix CPAchecker

    # Make everything in ~ubuntu accessible
    chown -R ubuntu:ubuntu .

  SHELL
end
