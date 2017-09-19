# Skink: A static verification tool

Skink is an automatic verification tool.
Currently it targets C programs and programs written in the [LLVM intermediate representation](http://llvm.org/docs/LangRef.html).
The current form of verification it implements is *error function unreachability* as defined by the [International Software Verification Competition](https://sv-comp.sosy-lab.org) (SV-COMP).

Skink's code can be obtained by cloning the main repository:

    git clone git@bitbucket.org:inkytonik/skink.git

Skink can be built and used on your local machine or in a Docker container.
We describe the local build requirements and instructions here.

Using the Skink Docker setup is advisable if you want to run Skink on programs from the SV-COMP, check the witnesses that Skink produces, etc.
If you want to run Skink using Docker, you will still need to build Skink locally (first section below) but you won't need to install the supporting tools since those are available in our Docker image.
See the file `Docker.md` in the Skink repository for instructions on how to use Skink with Docker.

## Building Skink

Building Skink requires a working Java installation and has been tested with Java 8.
Downloads for Java can be found here:

    http://www.oracle.com/technetwork/java/javase/downloads/index.html

To build Skink you will need the Scala build tool (sbt) which can be obtained here:

    http://www.scala-sbt.org    

Once Java and sbt are installed, you can build Skink as follows:

    cd <skink repo clone>
    sbt compile

If you are only interested in running Skink using Docker, you can now go to the Docker instructions.
Otherwise, continue here for further instructions on installing the toosl needed to run Skink directly on your local machine.    

## Supporting tools - Clang

To analyse C programs Skink requires the Clang C compiler (currently version 5.0.0) which can be installed from here:

    http://releases.llvm.org/download.html

## Supporting tools - SMT Solvers

Skink uses SMT solvers to help verify the feasibility of program executions.
Skink can use the Z3, CVC4 and SMTInterpol solvers.
At a minimum you should install Z3 which is the default solver used by Skink.

Installation details for the solvers will depend on the machine and operating system you are using.

#### Mac OS X (using Homebrew)

    brew install z3

#### Linux (Ubuntu)

    apt-get install z3

#### Windows

    FIXME

## Testing your Skink installation

Once you have at least Z3 installed you can test your Skink installation by running some simple tests:

    cd <skink repo clone>
    sbt test

All of the tests should pass.    

## Running Skink via sbt

You can run Skink via sbt as follows:

    sbt 'run -v -w - <file.c>'

where `<file.c>` is the name of the file you wish to verify.
The `-v` option causes Skink to verify the program and the `-w -` option causes it to print a witness to standard output.

For example, if you run the above command on

    src/test/resources/citests/math/simple-if_false-unreach-call.c

you should see something like this:

    [info] Running au.edu.mq.comp.skink.Main -v -w - src/test/resources/citests/math/simple-if_false-unreach-call.c
    [info] FALSE
    [info] <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    ...
    [info] </graphml>

where the `FALSE` indicates that Skinks believes that the program is incorrect (as expected for this program) and the rest of the output is the witness that demonstrates this fact.
Other possibilities for the Skink output are `TRUE` which means Skink thinks the program is correct, or `UNKNOWN` which means it doesn't know.

For a full list of Skink command-line options:

    sbt 'run --help'

Note that if you are often running Skink from sbt you will probably find it faster to run sbt in interactive mode since you won't pay for the sbt startup each time you execute a command.
For example,

    sbt
    skink 2.0-SNAPSHOT> run -v -w - <file.c>

## Skink logs

If you want to see detail on what Skink is doing, consult the files that are written in the `logs` sub-directory of your Skink working directory.
For example, `logs/C.log` contains information about the execution of the C frontend, `logs/LLVM.log` contains information about the LLVM side of things and `logs/Skink.log` contains overall information about the verification process.

## Running Skink outside sbt (FIXME: check)

#### Mac or Linux shell

On Mac or Linux, you can also run Skink on a single C file using the `skink.sh` script.
You first need to run

    sbt assembly

which builds Skink and packages it as a single Java archive.    
Then you can run a shell command such as:

    skink.sh loc <file.c>

The `loc` argument means *local mode* which means it runs Skink using the Java archive created by `sbt assembly` in the current directory's `target` folder.
