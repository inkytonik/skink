package au.edu.mq.comp.perentiemq

import iml.IMLSyntax.Program
import org.kiama.util.TestCompilerWithConfig

/**
 * Tests that check whether simple C programs are verified correctly.
 */
class SimpleVerificationTests extends Driver with TestCompilerWithConfig[Program,IMLConfig] {

    filetests ("Simple C verification", "programs/simple", ".ll", ".verif",
               argslist = List (Array ("-v")))

}
