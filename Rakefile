# frozen_string_literal: true

require 'rake/clean'
require 'scss_lint/rake_task'
require 'rubocop/rake_task'
require 'sass/plugin'
require 'yaml'

RuboCop::RakeTask.new
SCSSLint::RakeTask.new

CLEAN.include('tmp', '.sass_cache')
CLOBBER.include('out.css')

task default: :build

task test: [:rubocop, :scss_lint]

STYLISH_OPTIONS = %w(
    REVIEW_CHAR_BG
    RADICALS_COLOR
    KANJI_COLOR
    VOCAB_COLOR
    REVIEW_READING_BG
    REVIEW_MEANING_BG
).freeze

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

        STYLISH_OPTIONS.each do |opt|
            tmp = tmp.gsub(%("/*[[#{opt}]]*/"), %(/*[[#{opt}]]*/))
        end

        outfile.truncate(0)
        outfile.write(tmp)
    end
end

desc 'Replace Stylish option keys with default values'
task replace: :build do
    configfile = 'defaults.yml'
    abort("cannot find #{configfile}") unless File.exist?(configfile)
    config = YAML.safe_load(open(configfile))

    open('out.css') do |cssfile|
        tmp = cssfile.read
        open('out-replaced.css', 'w') do |outfile|
            config.each do |key, value|
                tmp = tmp.gsub(%(/*[[#{key}]]*/), value)
            end

            outfile.truncate(0)
            outfile.write(tmp)
        end
    end
end

desc 'Copy the generated out.css to the clipboard (requires xsel)'
task copy: :build do
    puts 'copying to clipboard...'
    sh 'cat out.css | xsel --input --primary'
end

desc 'Copy the generated out-replaced.css to the clipboard (requires xsel)'
task copy_replaced: :replace do
    puts 'copying to clipboard...'
    sh 'cat out-replaced.css | xsel --input --primary'
end
