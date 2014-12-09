# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html
# Generated on 2014-12-03 using
# generator-karma 0.8.3

module.exports = (config) ->
  config.set
    basePath: '../'
    frameworks: ['jasmine']
    files: [
      'bower_components/angular/angular.js'
      'bower_components/angular-mocks/angular-mocks.js'
      'bower_components/angular-animate/angular-animate.js'
      'bower_components/angular-aria/angular-aria.js'
      'bower_components/angular-cookies/angular-cookies.js'
      'bower_components/angular-messages/angular-messages.js'
      'bower_components/angular-resource/angular-resource.js'
      'bower_components/angular-route/angular-route.js'
      'bower_components/angular-sanitize/angular-sanitize.js'
      'bower_components/angular-touch/angular-touch.js'
      'app/scripts/**/*.coffee'
      'test/mock/**/*.coffee'
      'test/spec/**/*.coffee'
    ],
    exclude: []
    port: 8080
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO
    browsers: [
      'PhantomJS'
    ]
    plugins: [
      'karma-phantomjs-launcher'
      'karma-jasmine'
      'karma-coffee-preprocessor'
    ]
    autoWatch: true
    singleRun: false
    colors: true
    preprocessors: '**/*.coffee': ['coffee']

    # Uncomment the following lines if you are using grunt's server to run the tests
    proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    urlRoot: '_karma_'
