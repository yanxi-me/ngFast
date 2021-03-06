config = require '../config'
gulp = require 'gulp'

gulp.task 'watch', ['browserSync', 'server'], ->
  gulp.watch config.scripts.src, ['browserify']
  gulp.watch config.styles.src, ['styles']
  gulp.watch config.images.src, ['images', 'reload']
  gulp.watch config.views.watch, ['views']
#  gulp.watch config.coffee.src, ['coffee']