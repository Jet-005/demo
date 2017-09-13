var gulp = require('gulp'),
	cssmini = require('gulp-minify-css'),
	htmlmin = require('gulp-htmlmin'),
    uglify = require('gulp-uglify'),
    imagemin = require('gulp-imagemin');

gulp.task('default',['Cssmin','Htmlmin','script'], function() {
	console.log('ok');
});
gulp.task('Cssmin', function () {
    gulp.src('./css/*.css')
        .pipe(cssmini())
        .pipe(gulp.dest('build/css'));
});
gulp.task('Htmlmin', function () {
    var options = {
        removeComments: true,//清除HTML注释
        collapseWhitespace: true,//压缩HTML
        collapseBooleanAttributes: true,//省略布尔属性的值 <input checked="true"/> ==> <input />
        removeEmptyAttributes: true,//删除所有空格作属性值 <input id="" /> ==> <input />
        removeScriptTypeAttributes: true,//删除<script>的type="text/javascript"
        removeStyleLinkTypeAttributes: true,//删除<style>和<link>的type="text/css"
        minifyJS: true,//压缩页面JS
        minifyCSS: true//压缩页面CSS
    };
    gulp.src('./index.html')
        .pipe(htmlmin(options))
        .pipe(gulp.dest('build'));
});
gulp.task('script', function() {
    gulp.src('./js/*.js')
        .pipe(uglify())
        .pipe(gulp.dest('build/js'))
});
gulp.task('imgmin',function(){
    gulp.src('./img/*.jpg')
        .pipe(imagemin())
        .pipe(gulp.dest('build/img'))
});