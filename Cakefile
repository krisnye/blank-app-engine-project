{utility,watcher} = require 'glass-build'

javaSource = "src"

isWindows = process.platform is 'win32'
ext = if isWindows then ".bat" else ""
server = null

start = ->
    server = utility.spawn "ant#{ext} runserver"

restart = ((callback) ->
    kill ->
        start()
        callback?()
    ).debounce(1000)

kill = (callback) ->
    server?.kill()
    server = null
    # in case that doesn't succeed, on windows
    # we will also do a task kill of all java.exe processes
    if isWindows
        utility.exec "taskkill /F /IM java.exe", callback
    else
        callback?()

task 'run', 'runs the development server', run = ->
    restart ->
        # watch for source changes and restart as needed.
        watcher.watchDirectory javaSource, {include:".java",initial:false}, (file) ->
            restart()
task 'kill', 'kills the development server', kill


