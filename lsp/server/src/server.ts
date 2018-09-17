'use strict';

const { spawn } = require('child_process');

spawn("java", 
    ["-Xmx1400m", "-Xss16m", "-cp", "./:./target/scala-2.12/skink-assembly-2.0-SNAPSHOT.jar", "au.edu.mq.comp.skink.Main", "--lsp"],
    { cwd: "path/to/skink",
      stdio: 'inherit'
    }
);