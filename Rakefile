# frozen_string_literal: true

require 'rake/clean'
require 'scss_lint/rake_task'
require 'rubocop/rake_task'
require 'sass/plugin'

RuboCop::RakeTask.new
SCSSLint::RakeTask.new

CLEAN.include('tmp', '.sass_cache')
CLOBBER.include('out.css')

STYLISH_OPTIONS = {
    RADICALS_COLOR:    '#3daee9',
    KANJI_COLOR:       '#fdbc4b',
    VOCAB_COLOR:       '#2ecc71',
    REVIEW_READING_BG: 'transparent',
    REVIEW_MEANING_BG: 'transparent'
}.freeze

task default: :build

task test: [:rubocop, :scss_lint]

desc 'Build the CSS files from SCSS sources'
task :build do
    Sass::Plugin.options[:template_location] = 'stylesheets'
    Sass::Plugin.options[:css_location] = 'tmp'
    Sass::Plugin.update_stylesheets

    open('out.css', 'w') do |outfile|
        tmp = <<~CSS
            @-moz-document domain(www.wanikani.com) {
                #{File.read('tmp/main.css')}
            }
        CSS

        STYLISH_OPTIONS.keys.each do |opt|
            tmp = tmp.gsub(%("/*[[#{opt}]]*/"), %(/*[[#{opt}]]*/))
        end

        outfile.truncate(0)
        outfile.write(tmp)
    end
end

desc 'Replace Stylish option keys with default values'
task replace: :build do
    open('out.css') do |cssfile|
        tmp = cssfile.read
        open('out-replaced.css', 'w') do |outfile|
            STYLISH_OPTIONS.each do |key, value|
                tmp = tmp.gsub(%(/*[[#{key}]]*/), value)
            end

            outfile.truncate(0)
            outfile.write(tmp)
        end
    end
end

desc 'Copy the generated out.css to the clipboard (requires the xsel program)'
task copy: :build do
    puts 'copying to clipboard...'
    sh 'cat out.css | xsel --input --primary'
end

desc 'Copy the generated out-replaced.css to the clipboard (requires the xsel program)'
task copy_replaced: :replace do
    puts 'copying to clipboard...'
    sh 'cat out-replaced.css | xsel --input --primary'
end
