# frozen_string_literal: true

require 'rake/clean'
require 'scss_lint/rake_task'
require 'rubocop/rake_task'
require 'sass/plugin'

RuboCop::RakeTask.new
SCSSLint::RakeTask.new

CLEAN.include('tmp', '.sass_cache')
CLOBBER.include('out.css')

task default: :build

task test: [:rubocop, :scss_lint]

desc 'Build the CSS files from SCSS sources'
task :build do
    Sass::Plugin.options[:template_location] = 'stylesheets'
    Sass::Plugin.options[:css_location] = 'tmp'
    Sass::Plugin.update_stylesheets

    open('out.css', 'w') do |outfile|
        outfile.truncate(0)
        outfile.write <<~CSS
            @-moz-document domain(www.wanikani.com) {
                #{File.read('tmp/main.css')}
            }
        CSS
    end
end

desc 'Copy the generated out.css to the clipboard (requires the xsel program)'
task copy: :build do
    puts 'copying to clipboard...'
    sh 'cat out.css | xsel --input --primary'
end
