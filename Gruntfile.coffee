module.exports = (grunt) ->

    # configuration
    grunt.initConfig

        # package
        pkg:
            grunt.file.readJSON "package.json"

        # meta
        meta:
            version: ""
            banner: """/**
                * <%= pkg.name %>
                * Copyright (c) <%= grunt.template.today("yyyy") %>
                * <%= pkg.author.name %> <<%= pkg.author.email %>>
                */"""

        # grunt sass
        sass:
            compile:
                options:
                    style: 'expanded'
                files: [
                    expand: true
                    cwd: 'src/sass'
                    src: ['**/*.scss', '**/*.sass']
                    dest: 'public/css'
                    ext: '.css'
                ]

        # grunt coffee
        coffee:
            compile:
                options:
                    bare: true
                    preserver_dirs: true
                    sourceMap: true
                files: [
                    expand: true
                    cwd: 'src/coffee'
                    src: ['**/*.coffee']
                    dest: 'public/js'
                    ext: '.js'

        # grunt haml
        haml:
            compile:
                options:
                    expand: true,
                    cwd: 'src/haml'
                    src: ['**/*.haml']
                    dest: 'public'
                    ext: '.html'

        # grunt watch
        watch:
