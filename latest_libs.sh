if cd sbt-rats; then hg pull -u && cd -; else hg clone https://bitbucket.org/inkytonik/sbt-rats; fi
cd sbt-rats; sbt publishLocal; cd -
if cd kiama; then hg pull -u && cd -; else hg clone https://bitbucket.org/inkytonik/kiama; fi
cd kiama; sbt "++2.12.2 publishLocal"; sbt "++2.12.2 test:publishLocal"; cd -
if cd scalallvm; then hg pull -u && cd -; else hg clone https://$1:$2@bitbucket.org/inkytonik/scalallvm; fi
cd scalallvm; sbt publishLocal; cd -
if cd automat; then git pull && cd -; else git clone https://git@bitbucket.org/franck44/automat.git; fi
cd automat; sbt publishLocal; cd -
if cd expect-for-scala; then git pull && cd -; else git clone https://bitbucket.org/franck44/expect-for-scala; fi
cd expect-for-scala; sbt publishLocal; cd -
if cd mq-scala-smtlib; then git pull && cd -; else git clone https://git@bitbucket.org/franck44/mq-scala-smtlib.git; fi
cd mq-scala-smtlib; sbt publishLocal; cd -
