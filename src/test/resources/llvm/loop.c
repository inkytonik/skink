int
main(int argc, char **argv)
{
  int i = 0;

  for (i = 0; i < 10; i++);

  if (i > 10) {
    ERROR: __VERIFIER_error();
  }

  return 0;
}
