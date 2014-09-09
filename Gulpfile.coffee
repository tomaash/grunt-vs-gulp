gulp = require('gulp')
jade = require('gulp-jade')

paths =
	templates_in: 'templates/**/*.jade'
	templates_base: './templates'
	templates_out: 'build/templates'

gulp.task 'jade', ->
  gulp.src paths.templates_in, base: paths.templates_base
  .pipe jade()
  .pipe gulp.dest paths.templates_out

gulp.task 'compile', ['jade']

gulp.task 'watch', ['compile'], ->
	gulp.watch paths.templates_in, ['compile']

gulp.task 'default', ['watch']
