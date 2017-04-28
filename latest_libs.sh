if cd sbt-rats; then hg pull -u && cd -; else hg clone https://bitbucket.org/inkytonik/sbt-rats; fi
cd sbt-rats; sbt publish-local; cd -
if cd kiama; then hg pull -u && cd -; else hg clone https://bitbucket.org/inkytonik/kiama; fi
cd kiama; sbt "++2.12.2 publish-local"; sbt "++2.12.2 test:publish-local"; cd -
if cd scalallvm; then hg pull -u && cd -; else hg clone https://$1:$2@bitbucket.org/inkytonik/scalallvm; fi
cd scalallvm; sbt publish-local; cd -
if cd automat; then git pull && cd -; else git clone https://$1:$2@bitbucket.org/franck44/automat.git; fi
cd automat; sbt publish-local; cd -
if cd mq-scala-smtlib; then git pull && cd -; else git clone https://$1:$2@bitbucket.org/franck44/mq-scala-smtlib.git; fi
cd mq-scala-smtlib; sbt publish-local; cd -
