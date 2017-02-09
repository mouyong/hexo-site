'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var cssnano = require('cssnano');

var dirs = {
  public: 'public'
};

gulp.task('useref', function(){
  return gulp.src('public/**/*.html')
    .pipe($.useref({
      searchPath: 'public'
    }))
    .pipe($.uniqueFiles())
    .pipe($.if('*.css', $.postcss([
      cssnano()
     ])))
    .pipe($.if('*.js', $.uglify()))
    .pipe($.rev())
    .pipe($.revReplace({
      prefix: '/'
    }))
    .pipe(gulp.dest('public'));
});

gulp.task('default', ['useref']);