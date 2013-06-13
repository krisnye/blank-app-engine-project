config =
    node:
        directory: lib = 'lib'
    source:
        directory: 'src'
    browser:
        input:
            "mymodule": lib
            "glass-test": true
        output:
            directory: 'war/js'
            webroot: 'war'
    appengine:
        java: 'java'
        pages: true

builder = require "glass-build"

task 'build', "rebuilds the entire project", -> builder.build config
task 'watch', "builds the project, runs the server and watches for changes", -> builder.watch config
task 'kill', "kills any java processes left hanging on windows", -> builder.kill config
task 'test', "runs the command line unit tests", -> builder.test config
