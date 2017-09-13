var gulp = require('gulp'),
	cssmini = require('gulp-minify-css'),
	htmlmin = require('gulp-htmlmin');

gulp.task('default',['Cssmin','Htmlmin'], function() {
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
    gulp.src('./CSSdemo.html')
        .pipe(htmlmin(options))
        .pipe(gulp.dest('build'));
});