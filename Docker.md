Instructions for using Docker to get a test VM for running Skink including with a BenchExec setup.

Note that the fshell-w2t witness validator used by the Skink tests and Benchexec doesn't run properly on recent Mac OS X versions, since they can't compile 32-bit applications any more.
Thus to do full validation on the Mac you need to use the Docker image.
Running Skink itself locally on a Mac is still fine if you have the SMT solvers installed.

#### Install Docker

    https://www.docker.com

#### Build Skink for use in the benchmarks

You should build the Skink project on your host machine. Use the sbt command

    assembly

which will build and package Skink into a standalone jar.
This jar is used by the BenchExec setup to run Skink so things won't work if you just compile Skink into class files.

#### Run a VM using the docker-skink image

    cd <your Skink working directory>
    ./docker-run

The first time you do this it will take some time to download the relevant image(s).
Eventually you should see a root shell prompt and you should be in your Skink working directory which is mounted at /skink.

    Unable to find image 'inkytonik/docker-skink:latest' locally
    latest: Pulling from inkytonik/docker-skink
    ...
    Digest: sha256:3819edce8293636112ab0459281d7fa216d4446531bdae2aba6b4a70a8e4d615
    Status: Downloaded newer image for inkytonik/docker-skink:latest
    root@8e4ebd316b54:/skink#

When you exit the shell of the VM the Docker container should be removed automatically.
Subsequent uses of `docker-run` should be much faster to start.

#### Find the SV-COMP benchmarks

The sv-benchmarks repo is checked out at `/usr/src/sv-benchmarks` and also linked to `/sv-benchmarks` so processes running in `/skink` can reference the benchmarks via `../sv-benchmarks`.
This extra link helps us reuse some SV-COMP files which use this `..` convention.

#### Run the benchmarks

The Skink `bench` script will perform the following steps:

- run benchexec using Skink to verify the chosen benchmarks
- run benchexec using CPAchecker to verify the witnesses produced by Skink
- merge the verification and validation results into a single HTML table
- print the name of the file containing the table

Run the command

    ./bench

You should see progress messages and a summary table at the end. Here's an example:

    executing run set 'sv-comp17.Foo'     (14 files)
    03:04:10   count-up-down_false-unreach-call.c             false(reach)              6.36    7.80
    03:04:18   eca-like_false-unreach-call.c                  false(reach)              5.76    6.10
    03:04:24   multiple-error-calls_false-unreach-call.c      false(reach)              5.95    6.28
    03:04:31   simple-function_false-unreach-call.c           false(reach)              6.17    6.50
    03:04:37   simple-if_false-unreach-call.c                 false(reach)              6.13    6.46
    03:04:44   simple-loop_false-unreach-call.c               TIMEOUT                  45.84   21.00
    03:05:31   array-hard_true-unreach-call.c                 TIMEOUT                  33.07   21.01
    03:06:05   array-sequence_true-unreach-call.c             true                      5.79    6.13
    03:06:11   simple-function_true-unreach-call.c            true                      6.13    6.44
    03:06:18   simple-if_true-unreach-call.c                  true                      6.90    7.22
    03:06:25   simple-loop-array_true-unreach-call.c          TIMEOUT                  30.33   21.00
    03:06:56   simple-loop2_true-unreach-call.c               TIMEOUT                  56.28   21.02
    03:07:54   simple-loop_true-unreach-call.c                TIMEOUT                  48.65   21.00
    03:08:44   test-interpolant-franck_true-unreach-call.c    TIMEOUT                  23.67   21.00

    Statistics:             14 Files
      correct:               8
        correct true:        3
        correct false:       5
      incorrect:             0
        incorrect true:      0
        incorrect false:     0
      unknown:               6
      Score:                11 (max: 22)

The script will continue with other benchexec runs to validate the witnesses.
The output will be similar to that above.

The BenchExec results and log files can be found in the `results-*` sub-directories.

The bench script also uses the program table-generator and a merging Python script to produce a single HTML table report from the verification and validation results files.
The script will print out the name of this HTML file at the end of its run.

#### Run BenchExec on specific tasks

You can supply an argument to the bench script to just run on particular benchmark
tasks, as in

    ./bench -t ReachSafety-Loops

to just run on the SV-COMP ReachSafety-Loops category.

#### Setting up test tasks

The repository contains a task set file `Test.set` which you can use to easily set up runs that don't involve all of a real SV-COMP task set.
E.g., by making the contents of `Test.set` the following two lines:

    loops/array_false-unreach-call_true-termination.i
    loops/array_true-unreach-call_true-termination.i

you can run

    ./bench -t Test

to just run a test on those two benchmark files.

#### Run Skink on a single benchmark file

If you want to investigate a single benchmark without using BenchExec, you can run
Skink as follows:

    ./skink.sh src/test/resources/citests/math/array-sequence_true-unreach-call.c

and you will see logging information, etc.

#### Developing in Visual Studio Code development container mode

Skink is also set up to allow development on a host machine with the Docker image running in a container.
In this mode you can edit as per usual, but terminals and the Skink extension will run in the container, thereby simplifying setup since you don't necessarily need to have the SMT solvers used by Skink installed on your host.

You will need at least the "Remote - Containers" VS code extension installed.
It's also part of the "Remote Development" extension pack.

You can open in dev container mode by opening a Skink working directory in VS Code, then the editor should prompt you to optionally open the folder in dev container mode. If this doesn't happen look for commands that start with "Remote-Containers".
