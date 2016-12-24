# frozen_string_literal: true

require 'scss_lint/rake_task'
require 'sass/plugin'

SCSSLint::RakeTask.new

task default: :compile

desc 'Build the SCSS files'
task :compile do
    options = {
        template_location: './stylesheets',
        css_location:      './tmp/out',
        cache_location:    './tmp/sass_cache'
    }
    Sass::Plugin.options.update(options)
    Sass::Plugin.update_stylesheets

    open('./tmp/out.css', 'w') do |outfile|
        outfile.truncate(0)
        outfile.write <<~EOF
            @-moz-document domain(www.wanikani.com) {
            #{File.read('./tmp/out/main.css')}
            }
        EOF
    end
end

desc 'Copy out.css to the clipboard'
task copy: :compile do
    puts 'copying to clipboard...'
    sh 'cat ./tmp/out.css | xsel --input --primary'
end

task :clean do
    rm_rf './tmp'
end

task test: [:rubocop, :scss_lint]

task :rubocop do
    sh 'rubocop'
end
