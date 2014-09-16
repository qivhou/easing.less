/*global module:false*/
module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    // Task configuration.
    template: {
        build :{
            src: 'easing.less.tpl',
            dest: 'easing.less',
            engine: 'underscore',
            variables: function(){
                return  {
                    easings: grunt.file.readJSON('easings.json')
                };
            }
        }
    },
    clean : {
        build : ['easing.less']
    }
  });

  // These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-templater');
  grunt.loadNpmTasks('grunt-contrib-clean');

  // Default task.
  grunt.registerTask('default', ['clean', 'template'] );

};
