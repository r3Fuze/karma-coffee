gulp = require "gulp"
plumber = require "gulp-plumber"
Server = require("karma").Server
Runner = require("karma").runner

gulp.task "test", (done) ->
    new Server({
        configFile: __dirname + "/karma.conf.coffee"
    }, done).start()

gulp.task "run", (done) ->
    Runner.run({
        configFile: __dirname + "/karma.conf.coffee"
    }, -> done() )


gulp.task "watch", ->
    gulp.watch("**/*.coffee", ["run"])
