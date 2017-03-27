Instructions for using Vagrant to get a test VM for running Skink in a BenchExec
setup.

* Install a virtual machine environment

VirtualBox seems to be the default one used by Vagrant.

    https://www.virtualbox.org

* Install Vagrant on your host machine

    https://www.vagrantup.com/docs/installation/

* Create and provision the VM

Run the command

    vagrant up

while in the top-level directory of a Skink repo instance.

This will create a Linux VM, then download and install all of the software
needed to run Skink. It will take a while (about 10 minutes on my laptop using
the MQ network) but will only need to be done once. The log messages produced
are often red which apparently is not a problem.

* Connect to the VM using ssh

Run the command

    vagrant ssh

to get a shell session on the VM. You will be the user "ubuntu" with
/home/ubuntu as its home directory.

* Find the Skink repo

The Skink repo on your host machine will be mounted at /vagrant. Thus,
you will want to move over there. Also, you can edit files on the host
machine and the VM will see the changes, so you don't need to edit in
the VM.

* Build Skink for use in the benchmarks

You should build the Skink project on your host machine. Use the sbt
command

    assembly

which will build and package Skink into a standalone jar. This jar is
used by the BenchExec setup to run Skink so things won't work if you
just compile Skink into class files.

* Find the sv-benchmarks

The sv-benchmarks repo will be checked out at /home/ubuntu/sv-benchmarks and
also linked to /sv-benchmarks so processes running in /vagrant can reference
the benchmarks via ../sv-benchmarks. This extra link helps us reuse some
SV-COMP files which use this .. convention.

* Run the benchmarks

The bench script will perform the following steps:

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

The BenchExec results, log files etc can be found in the results sub-directory.

The script will continue with other benchexec runs to validate the witnesses. The output
will be similar to that above. The witness validation results will be placed in the
results-witness sub-direction and output from CPAchecker will be in the output sub-directory.

bench also uses the program table-generator and a merging Python script to produce a
single HTML table report from the verification and validation results files. The script
will print out the name of this HTML file at the end of its run.

* Run BenchExec on specific tasks

You can supply an argument to the bench script to just run on particular benchmark
tasks, as in

    ./bench -t Loops

to just run on the SV-COMP Loops category.

* Setting up test tasks

The repository contains a task set file `Test.set` which you can use to easily set
up runs that don't involve all of a real SV-COMP task set. E.g., by making the
contents of `Test.set` the following two lines:

    ../sv-benchmarks/c/loops/array_false-unreach-call_true-termination.i
    ../sv-benchmarks/c/loops/array_true-unreach-call_true-termination.i

you can run

    ./bench -t Test

to just run a test on those two benchmark files.    

* Run Skink on a single benchmark file

If you want to investigate a single benchmark without using BenchExec, you can run
Skink as follows:

    ./skink.sh src/test/resources/citests/array-sequence_true-unreach-call.c

and you will see logging information, etc.    

* Manage the VM instance

You can use

    vagrant halt
    vagrant up
    vagrant suspend
    vagrant resume

to halt, start up, suspend and resume your VM, or

    vagrant destroy

to get rid of it completely.
