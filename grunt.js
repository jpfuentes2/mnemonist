/*global module:false*/
module.exports = function(grunt) {
  'use strict';

  grunt.initConfig({
    sass: {
      dist: {
        files: {
          'app/public/css/main.css': 'app/sass/main.sass'
        }
      },
      options: {
        'compass': true
      }
    },

    haml: {
      index: {
        src: "app/views/*",
        dest: "public/index.html"
      }
    },

    coffee: {
      compile: {
        files: {
          'public/javascripts/*.js': 'app/assets/javascripts/*.coffee'
        }
      }
    },

    watch: {
      coffee: {
        files: ['app/assets/javascripts/*'],
        tasks: 'coffee'
      },
      sass: {
        files: ['app/sass/*'],
        tasks: 'sass'
      },
      haml: {
        files: ['app/views/*'],
        tasks: 'haml'
      }
    }
  });

  // Load necessary plugins
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-haml');

  grunt.registerTask('default', 'sass coffee');

};
