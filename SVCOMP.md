# The Software Verification Competition and Skink

Tables below show Skink/Best/Max for each category.

## 2019

* [Arrays](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-Arrays.xml.bz2.merged.xml.bz2.table.html) 49/365/418
* [BitVectors](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-BitVectors.xml.bz2.merged.xml.bz2.table.html) 37/76/86
* [ControlFlow](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2.merged.xml.bz2.table.html) 24/129/146
* [Floats](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-Floats.xml.bz2.merged.xml.bz2.table.html) 531/823/893, 5 in false
* [Heap](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-Heap.xml.bz2.merged.xml.bz2.table.html) 138/375/407, 1 in false
* [Loops](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-Loops.xml.bz2.merged.xml.bz2.table.html) 190/275/357
* [Recursive](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.2018-12-07_1200.results.sv-comp19_prop-reachsafety.ReachSafety-Recursive.xml.bz2.merged.xml.bz2.table.html) 53/129/148
* Total (raw) 1022
* [Total](https://sv-comp.sosy-lab.org/2019/results/results-verified/skink.results.sv-comp19.All.table.html) ReachSafety (adjusted) 1389/4638/6296
* Overall total 9329

Of six wrong programs, fpbv with MathSat gets these five right:

floats-cbmc-regression/float20_true-unreach-call_true-termination.i
float-newlib/double_req_bl_1121a_true-unreach-call.c
float-newlib/double_req_bl_1121b_true-unreach-call.c
float-newlib/float_req_bl_1121a_true-unreach-call.c
float-newlib/float_req_bl_1121b_true-unreach-call.c

So I assume they are wrong because the 2018 Skink gets them wrong before 2019 fpbv Skink got a go. But we need to be careful not to try too many parallel solvers too in these sorts of cases...

The other wrong program is heap-data/calendar_true-unreach-call.i which fails I think due a bad treatment of the NULL pointer.

## 2018

* Arrays: 52/235/290
* BitVectors: 36/77/86
* ControlFlow: 22/108/146
* Floats: 91/263/313
* Heap: 135/203/291
* Loops: 154/216/274
* Recursive: 51/116/148
* Total (raw) 541
* Total (adjusted) 1181/3058/4775
