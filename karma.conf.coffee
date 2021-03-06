# Karma configuration
# Generated on Sun Nov 29 2015 02:17:28 GMT+0100 (CET)

module.exports = (config) ->
    config.set

        # base path that will be used to resolve all patterns (eg. files, exclude)
        basePath: ""


        # frameworks to use
        # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
        frameworks: ["mocha", "chai", "browserify"]

        # list of files / patterns to load in the browser
        files: [
            "src/*.coffee"
            # { pattern: "spec/**/*.spec.coffee", included: true }
            "spec/**/*.spec.coffee"
        ]

        # list of files to exclude
        exclude: []

        # preprocess matching files before serving them to the browser
        # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
        preprocessors:
            "**/*.coffee": ["browserify"]

        browserify:
            transform: ["coffeeify"]
            extensions: [".coffee"]

            #bundleDelay: 100

        # test results reporter to use
        # possible values: 'dots', 'progress'
        # available reporters: https://npmjs.org/browse/keyword/karma-reporter
        reporters: ["mocha"]

        mochaReporter:
            output: "autowatch"

        # web server port
        port: 9876

        # enable / disable colors in the output (reporters and logs)
        colors: true

        # level of logging
        # possible values:
        # - config.LOG_DISABLE
        # - config.LOG_ERROR
        # - config.LOG_WARN
        # - config.LOG_INFO
        # - config.LOG_DEBUG
        logLevel: config.LOG_WARN

        # enable / disable watching file and executing tests whenever any file changes
        autoWatch: true

        # start these browsers
        # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
        browsers: ["PhantomJS"]

        # Continuous Integration mode
        # if true, Karma captures browsers, runs the tests and exits
        singleRun: false

        # Concurrency level
        # how many browser should be started simultanous
        concurrency: Infinity
