grunt.initConfig({
  pkg: grunt.file.readJSON('package.json'),
  jshint: {
*    src: [
      'src/**/*.js',
      '!src/**/*.spec.js'],
    options: {
      jshintrc: '.jshintrc' }},
  concat: {
*    src: '<%= jshint.src %>',
*    dest: 'dist/<%= pkg.name %>.js' },
});
grunt.registerTask('default',
  ['jshint', 'concat']);




var pkg = require('./package.json');
gulp.task('default', function() {
*  gulp.src([
      'src/**/*.js',
      '!src/**/*.spec.js'])
    .pipe(jshint())
    .pipe(jshint.reporter('jshint-stylish'))
    .pipe(concat(pkg.name + '.js'))
*    .pipe(gulp.dest('dist');
});
