var browserSync = require("browser-sync").create();
var gulp = require("gulp");
var sass = require("gulp-sass");
var cleanCss = require("gulp-clean-css");
var minify = require("gulp-minify");

const SCSS_PATH = { src: "app/styles/scss/**/*.scss", dest: "app/styles/" };
const CSS_PATH = { src: "app/styles/**/*.css", dest: "public/styles/" };
const PHP_PATH = { src: "app/**/*.php", dest: "public/" };
const JS_PATH = { src: "app/js/**/*.js", dest: "public/js" };

function browserSyncInit(done) {
  browserSync.init({
    proxy: {
      target: "http://localhost/~maneal/remember/app/",
      //port: 80,
    },
  });
  done();
}

function style() {
  return gulp
    .src(SCSS_PATH.src)
    .pipe(sass())
    .on("error", sass.logError)
    .pipe(gulp.dest(SCSS_PATH.dest))
    .pipe(browserSync.stream());
}

function watch() {
  gulp.watch(SCSS_PATH.src).on("change", style);
  gulp.watch(PHP_PATH.src).on("change", browserSync.reload);
  gulp.watch(JS_PATH.src).on("change", browserSync.reload);
}

function minifyCss() {
  return gulp
    .src(CSS_PATH.src)
    .pipe(cleanCss())
    .pipe(gulp.dest(CSS_PATH.dest));
}

function minifyJs() {
  return gulp
    .src(JS_PATH.src)
    .pipe(
      minify({
        noSource: true,
        ext: {
          min: ".js",
        },
      })
    )
    .pipe(gulp.dest(JS_PATH.dest));
}

function copyPhp() {
  return gulp.src(PHP_PATH.src).pipe(gulp.dest(PHP_PATH.dest));
}

exports.style = style;
exports.watch = gulp.series(browserSyncInit, style, watch);
exports.build = gulp.series(minifyCss, copyPhp, minifyJs);
