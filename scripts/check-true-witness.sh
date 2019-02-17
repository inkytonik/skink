#!/bin/bash
# Check that a true witness file is as expected.

if test $# -ne 2
then
    echo "usage: check-true-witness.sh property witness.graphml file.c"
    exit 1
fi

witness=$1
program=$2

sha1=`sha1sum $program | cut -d ' ' -f 1`

diff $witness - <<END
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<graphml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns="http://graphml.graphdrawing.org/xmlns"
>

<key id="entry"          for="node"  attr.name="entry"            attr.type="boolean"><default>false</default></key>
<key id="block"          for="node"  attr.name="block"            attr.type="int"   />
<key id="node.src"       for="node"  attr.name="node.src"         attr.type="string"/>
<key id="edge.src"       for="edge"  attr.name="edge.src"         attr.type="string"/>
<key id="startline"      for="edge"  attr.name="startline"        attr.type="int"   />
<key id="endline"        for="edge"  attr.name="endline"          attr.type="int"   />
<key id="violation"      for="node"  attr.name="violation"        attr.type="boolean"><default>false</default></key>
<key id="witness-type"   for="graph" attr.name="witness-type"     attr.type="string"/>
<key id="sourcecodelang" for="graph" attr.name="sourcecodelang"   attr.type="string"/>
<key id="producer"       for="graph" attr.name="producer"         attr.type="string"/>
<key id="specification"  for="graph" attr.name="specification"    attr.type="string"/>
<key id="programfile"    for="graph" attr.name="programfile"      attr.type="string"/>
<key id="programhash"    for="graph" attr.name="programhash"      attr.type="string"/>
<key id="memorymodel"    for="graph" attr.name="memorymodel"      attr.type="string"/>
<key id="architecture"   for="graph" attr.name="architecture"     attr.type="string"/>
<key id="assumption"                for="edge" attr.name="assumption"       attr.type="string"/>
<key id="assumption.note"           for="edge" attr.name="assumption.note"  attr.type="string"/>
<key id="assumption.scope"          for="edge" attr.name="assumption.scope" attr.type="string"/>
<key id="assumption.resultfunction" for="edge" attr.name="assumption.resultfunction" attr.type="string"/>

<graph edgedefault="directed">
  <data key="witness-type"  >correctness_witness</data>
  <data key="sourcecodelang">C</data>
  <data key="producer"      >skink</data>
  <data key="specification" >CHECK( init(main()), LTL(G ! call(__VERIFIER_error())) )</data>
  <data key="programfile"   >$program</data>
  <data key="programhash"   >$sha1</data>
  <data key="memorymodel"   >simple</data>
  <data key="architecture"  >32bit</data>

<node id="N0">
  <data key="entry">true</data>
</node>

<edge id="E0" source="N0" target="N1">
</edge>

<node id="N1">
  <data key="invariant">1</data>
  <data key="invariant.scope">main</data>
</node>

</graph>

</graphml>
END