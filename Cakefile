config =
    name: "mymodule"
    node:
        directory: 'lib'
    source:
        directory: 'src'
    browser:
        input:
            sugar: true
        output:
            directory: 'war/js'
            webroot: 'war'
    appengine:
        java: 'java'
        pages: true

builder = require "glass-build"

task 'build', -> builder.build config
task 'watch', -> builder.watch config
task 'kill', -> builder.kill config
task 'test', -> builder.test config
task 'bump', -> builder.bump config
task 'publish', -> builder.publish config
