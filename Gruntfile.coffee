module.exports = (grunt) ->
  paths =
    templates_in: '**/*.jade'
    templates_base: 'templates'
    templates_out: 'build/templates'
    scripts_in: 'scripts/**/*.coffee'
    scripts_out: 'build/app.js'

  grunt.initConfig {
    jade:
      compile:
        options:
          client: false
          pretty: true

        files: [
          cwd: paths.templates_base
          src: paths.templates_in
          dest: paths.templates_out
          expand: true
          ext: ".html"
        ]

    coffee:
      compile:
        files:
          'build/app.js': paths.scripts_in

    watch:
      templates:
        files: [paths.templates_in]
        tasks: ['jade']
  }

  grunt.loadNpmTasks "grunt-contrib-jade"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-coffee"

  grunt.registerTask 'compile', ['jade', 'coffee']

  grunt.registerTask 'default', ['compile', 'watch']