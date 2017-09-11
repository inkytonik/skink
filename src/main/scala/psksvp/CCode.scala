package psksvp



object CCode
{
  val one =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main(int argc, char** arg)
                |{
                |  int i;
                |  for(i = 1; i <= 1000; i++);
                |
                |  if(i != 1001) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin


  val two =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |unsigned int __VERIFIER_nondet_uint();
                |
                |int main(int argc, char** arg)
                |{
                |  unsigned int n = __VERIFIER_nondet_uint();
                |  int i;
                |  for(i = 1; i <= n; i++);
                |
                |  if(i != n + 1) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val three =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main(int argc, char** arg)
                |{
                |  int i;
                |  int a = 0;
                |  for(i = 1; i <= 1000; i++);
                |
                |  if(i != 1001) __VERIFIER_error();
                |  if(a != 0) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val four =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main(int argc, char** arg)
                |{
                |  int a = 0;
                |  int i = 0;
                |  while(i < 1000)
                |  {
                |    if(i != a) __VERIFIER_error();
                |    i = i + 1;
                |    a = i;  //a = a + 1;
                |  }
                |  if(i != 1000)  __VERIFIER_error();
                |  if(a != 1000)  __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin


  val five =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |extern int __VERIFIER_nondet_int();
                |extern void __VERIFIER_assume(int);
                |int main(int argc, char** arg)
                |{
                |  int n = __VERIFIER_nondet_int();
                |  __VERIFIER_assume( n > 0);
                |  int a = 0;
                |  int i = 0;
                |  while(i < n)
                |  {
                |    if(i != a) __VERIFIER_error();
                |    i = i + 1;
                |    a = i;  //a = a + 1;
                |  }
                |  if(i != n)  __VERIFIER_error();
                |  if(a != n)  __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val six =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main(int argc, char** arg)
                |{
                |  int x = 0;
                |  int y = 0;
                |  while(x < 2000)
                |  {
                |      x++;
                |      y++;
                |  }
                |  if(x != 2000) __VERIFIER_error();
                |  if(y < 0)   __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin


  val seven =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main(int argc, char** arg)
                |{
                |  int x = 0;
                |  int y = 0;
                |  while(x < 2000)
                |  {
                |      x++;
                |      y++;
                |  }
                |  if(x == -1) __VERIFIER_error();
                |  if(y == -1)   __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val eight =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |int __VERIFIER_nondet_int();
                |extern void __VERIFIER_assume(int);
                |
                |int main(int argc, char** arg)
                |{
                |  int n = __VERIFIER_nondet_int();
                |  int x = 0;
                |  int y = 0;
                |  __VERIFIER_assume(n > 0);
                |  while(x < n)
                |  {
                |      x++;
                |      y++;
                |  }
                |  if(x == -1) __VERIFIER_error();
                |  if(y == -1)   __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val nine =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |int __VERIFIER_nondet_int();
                |extern void __VERIFIER_assume(int);
                |
                |int main(int argc, char** arg)
                |{
                |  int n = __VERIFIER_nondet_int();
                |  int x = 0;
                |  int y = 0;
                |  __VERIFIER_assume(n > 0);
                |  while(x < n)
                |  {
                |      x++;
                |      y++;
                |  }
                |
                |  // if I take the below verify out, the predicate inferring method
                |  // would not be able to extract the x and y relation which is
                |  // x == y
                |  if(x != y) __VERIFIER_error();
                |
                |  // just more verifies
                |  if(x != n) __VERIFIER_error();
                |  if(y != n) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val ten =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main(int argc, char** arg)
                |{
                |  int x = 2000;
                |  while(x > 0)
                |  {
                |      int y = 0;
                |      while(y < x) y++;
                |      if(y != x) __VERIFIER_error();
                |      x--;
                |  }
                |  if(x != 0) __VERIFIER_error();
                |
                |  return 0;
                |}
              """.stripMargin

  val eleven =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |unsigned int __VERIFIER_nondet_uint();
                |extern void __VERIFIER_assume(int);
                |
                |int main(int argc, char** arg)
                |{
                |  unsigned int x = __VERIFIER_nondet_uint();
                |  __VERIFIER_assume(x > 0);
                |  while(x > 0)
                |  {
                |      unsigned int y = 0;
                |      while(y < x) y++;
                |      if(y != x) __VERIFIER_error();
                |      x--;
                |  }
                |  if(x != 0) __VERIFIER_error();
                |
                |  return 0;
                |}
              """.stripMargin


  val code12 =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |extern int __VERIFIER_nondet_int();
                |extern void __VERIFIER_assume(int);
                |
                |int main(int argc, char** arg)
                |{
                |  int x = __VERIFIER_nondet_int();
                |  __VERIFIER_assume(x > 0);
                |  while(x > 0)
                |  {
                |      int y = 0;
                |      while(y < x) y++;
                |      if(y != x) __VERIFIER_error();
                |      x--;
                |  }
                |  if(x != 0) __VERIFIER_error();
                |
                |  return 0;
                |}
              """.stripMargin

  val code13 =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |int __VERIFIER_nondet_int();
                |extern void __VERIFIER_assume(int);
                |
                |int main(int argc, char** arg)
                |{
                |  int n = __VERIFIER_nondet_int();
                |  int x = 0;
                |  int y = 0;
                |  __VERIFIER_assume(n > 0);
                |  while(x < n)
                |  {
                |      x++;
                |      y++;
                |  }
                |
                |  // if I take the below verify out, the predicate inferrer
                |  // would not be able to extract the x and y relation which is
                |  // x == y
                |  if(x != y) __VERIFIER_error();
                |
                |  // just more verifies
                |  if(x != n) __VERIFIER_error();
                |  if(y != n) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val code14 =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |unsigned int __VERIFIER_nondet_uint();
                |
                |int main()
                |{
                |  unsigned int n = __VERIFIER_nondet_uint();
                |  int x = 1;
                |  int a = 0;
                |  while(x <= n)
                |  {
                |    a = a + 1;
                |    if(a != x) __VERIFIER_error();
                |    x = x + 1;
                |  }
                |  if(a != x - 1) __VERIFIER_error();
                |  if(a != n) __VERIFIER_error();
                |  if(x != n + 1) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val code15 =  """
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |unsigned int __VERIFIER_nondet_uint();
                |extern void __VERIFIER_assume(int);
                |
                |int main(int argc, char** arg)
                |{
                |  unsigned int n = __VERIFIER_nondet_uint();
                |  __VERIFIER_assume(n >= 1);
                |  int x = 1;
                |  int a = 0;
                |  while(x <= n)
                |  {
                |    a = a + x;
                |    if(a < x) __VERIFIER_error();
                |    x = x + 1;
                |  }
                |  if(x != n + 1) __VERIFIER_error();
                |  if(0 == a) __VERIFIER_error();
                |  return 0;
                |}
              """.stripMargin

  val code16 =  """
                |// Source: Sumit Gulwani, Nebosja Jojic: "Program Verification as
                |// Probabilistic Inference", POPL 2007.
                |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
                |
                |int main()
                |{
                |    int x = 0;
                |    int y = 50;
                |    while(x < 100)
                |    {
                |	     if (x < 50)
                |	       x = x + 1;
                |	     else
                |      {
                |	       x = x + 1;
                |	       y = y + 1;
                |	     }
                |    }
                |    if(y != 100) __VERIFIER_error();
                |    return 0;
                |}
              """.stripMargin

  val code17 =
    """
      |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
      |int main()
      |{
      |  unsigned int n = __VERIFIER_nondet_uint();
      |  unsigned int x = n;
      |  unsigned int y = n;
      |  while(x > 0)
      |  {
      |    x = x - 1;
      |    y = y - 1;
      |  }
      |
      |  if(x + y != 0) __VERIFIER_error();
      |}
    """.stripMargin

  val code18 =
    """
      |extern void __VERIFIER_error() __attribute__ ((__noreturn__));
      |extern void __VERIFIER_assume(int);
      |extern _Bool __VERIFIER_nondet_bool();
      |int main()
      |{
      |  int iRetries;
      |  _Bool bReasonHasATAPI_COD;
      |  _Bool bReasonHasATAPI_IO;
      |  __VERIFIER_assume( iRetries == 100 && ( 0 == bReasonHasATAPI_COD || 0 != bReasonHasATAPI_IO));
      |  while(iRetries != 0 && ( 0 == bReasonHasATAPI_COD || 0 != bReasonHasATAPI_IO))
      |  {
      |    iRetries = iRetries - 1;
      |    bReasonHasATAPI_COD = __VERIFIER_nondet_bool();
      |    bReasonHasATAPI_IO = __VERIFIER_nondet_bool();
      |    if(0 == iRetries)
      |    {
      |      bReasonHasATAPI_COD = (_Bool)1;
      |      bReasonHasATAPI_IO = (_Bool)0;
      |    }
      |  }
      |
      |  if(!(iRetries < 100 && 0 != bReasonHasATAPI_COD && 0 == bReasonHasATAPI_IO))
      |    __VERIFIER_error();
      |}
    """.stripMargin

  import psksvp.SkinkExecutor.Code

  val baseTest = List(Code(toFile(CCode.one), false, "clang-3.7", 20),
                       Code(toFile(CCode.two), false, "clang-3.7", 20),
                       Code(toFile(CCode.three), false, "clang-3.7", 20),
                       Code(toFile(CCode.four), false, "clang-3.7", 20),
                       Code(toFile(CCode.five), false, "clang-3.7", 20),
                       Code(toFile(CCode.six), false, "clang-3.7", 20),
                       Code(toFile(CCode.seven), false, "clang-3.7", 20),
                       Code(toFile(CCode.eight), false, "clang-3.7", 20),
                       Code(toFile(CCode.nine), false, "clang-3.7", 20),
                       Code(toFile(CCode.ten), false, "clang-3.7", 20),
                       Code(toFile(CCode.eleven), false, "clang-3.7", 20),
                       Code(toFile(CCode.code12), false, "clang-3.7", 20),
                       Code(toFile(CCode.code13), false, "clang-3.7", 20),
                       Code(toFile(CCode.code17), false, "clang-3.7", 20))
                       //Code(toFile(CCode.code14), false, "clang-3.7", 20),
                       //Code(toFile(CCode.code15), false, "clang-3.7", 20),
                       //Code(toFile(CCode.code16), false, "clang-3.7", 20))

  val baseDir = "/home/psksvp/workspace/sv-bench"
  val loopAcc = List(Code(baseDir + "/c/loop-acceleration/const_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/diamond_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/diamond_true-unreach-call2.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-acceleration/functions_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/nested_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/overflow_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/multivar_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/phases_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/phases_true-unreach-call2.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/simple_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/simple_true-unreach-call2.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/simple_true-unreach-call3.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/simple_true-unreach-call4.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/underapprox_true-unreach-call1.c", false, "clang-3.7", 20),
                      Code(baseDir + "/c/loop-acceleration/underapprox_true-unreach-call2.c", false, "clang-3.7", 20))

  val loopLit = List(Code(baseDir + "/c/loop-lit/afnp2014_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/bhmr2007_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/cggmp2005_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/cggmp2005b_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/css2003_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/ddlm2013_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/gj2007_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/gj2007b_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/gr2006_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/gsv2008_true-unreach-call.c", false, "clang-3.7", 10),
                      Code(baseDir + "/c/loop-lit/ghhk2008_true-unreach-call.c", false, "clang-3.7", 10)
                    )

  val loopLitO2 = List(Code(baseDir + "/c/loop-lit/afnp2014_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/bhmr2007_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/cggmp2005_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/cggmp2005b_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/css2003_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/ddlm2013_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/gj2007_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/gj2007b_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/gr2006_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/gsv2008_true-unreach-call.c", true, "clang-4.0", 10),
                        Code(baseDir + "/c/loop-lit/hhk2008_true-unreach-call.c", false, "clang-3.7", 10)
                      )

  val loopInvgen = List(Code(baseDir + "/c/loop-invgen/nest-if3_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/down_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/fragtest_simple_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/half_2_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/heapsort_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/id_build_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/large_const_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/MADWiFi-encode_ie_ok_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/nested6_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/nested9_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/NetBSD_loop_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/sendmail-close-angle_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/seq_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/SpamAssassin-loop_true-unreach-call.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loop-invgen/string_concat-noarr_true-unreach-call.c", true, "clang-4.0", 10))
                         //Code(baseDir + "/c/loop-invgen/up_true-unreach-call.c", true, "clang-4.0", 10))

  val loops = List(Code(baseDir + "/c/loops/count_up_down_true-unreach-call_true-termination.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loops/for_infinite_loop_1_true-unreach-call_false-termination.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loops/sum01_true-unreach-call_true-termination.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loops/sum03_true-unreach-call_false-termination.c", true, "clang-4.0", 10),
                         Code(baseDir + "/c/loops/sum04_true-unreach-call_true-termination.c", true, "clang-4.0", 10),
                    Code(baseDir + "/c/loops/terminator_02_true-unreach-call_true-termination.c", true, "clang-4.0", 10),
                    Code(baseDir + "/c/loops/terminator_03_true-unreach-call_true-termination.c", true, "clang-4.0", 10),
                    Code(baseDir + "/c/loops/trex03_true-unreach-call.c", true, "clang-4.0", 10),
                    Code(baseDir + "/c/loops/sum04_true-unreach-call_true-termination.c", true, "clang-4.0", 10))

  import scala.concurrent.duration._
  def runBaseTest(outputDir:String,
                  timeout:Duration = 20.minutes):Unit=
  {
    SkinkExecutor.runBenchAndOutputReport("baseTest", baseTest, timeout, outputDir)
  }
}
