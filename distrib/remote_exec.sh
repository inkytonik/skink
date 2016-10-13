#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#sbt assembly
cp /vagrant/target/scala-2.11/skink-assembly-2.0-SNAPSHOT.jar skink/skink.jar
tar -cvzf skink.tar.gz skink/
rsync -vai -e "ssh -i $DIR/default_kp_sydney.pem" skink.tar.gz "ubuntu@benchexec.ddns.net:/home/ubuntu/skink.tar.gz"
ssh -n -f -i $DIR/default_kp_sydney.pem ubuntu@benchexec.ddns.net "nohup sh -c '. ~/.dotfiles/source/.shell/svcomp; skink_test_local' >/dev/null 2>&1 &"
sleep 5 && ssh -i $DIR/default_kp_sydney.pem ubuntu@benchexec.ddns.net "ps aux | grep benchexec"
