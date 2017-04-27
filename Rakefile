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

configfile = ENV['CONFIGFILE'] || 'default.yml'

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

DEFAULT_CONFIG = 'config/dark.yml'

desc 'Build the CSS files from SCSS sources'
task :build do
    Sass::Plugin.options[:template_location] = 'stylesheets'
    Sass::Plugin.options[:css_location] = 'tmp'
    Sass::Plugin.update_stylesheets

    open('out.css', 'w') do |outfile|
        tmp = File.read('tmp/main.css')

        STYLISH_OPTIONS.each do |opt|
            tmp = tmp.gsub(%("/*[[#{opt}]]*/"), %(/*[[#{opt}]]*/))
        end

        outfile.truncate(0)
        outfile.write(tmp)
    end
end

desc 'Replace Stylish option keys with default values'
task :replace, [:configfile] => :build do |_t, args|
    configfile = args[:configfile]
    abort("cannot find #{configfile}") unless File.exist?(configfile)
    config = YAML.safe_load(open(args[:configfile]))

    puts "Building CSS file with #{configfile}"

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
task :copy, [:replace, :configfile] => :build do |_t, args|
    if args[:replace]
        configfile = args[:configfile] || DEFAULT_CONFIG
        Rake::Task[:replace].invoke(configfile)
        sh 'xclip -selection clipboard out-replaced.css'
        puts 'Copied out-replaced.css to clipboard.'
    else
        sh 'xclip -selection clipboard out.css'
        puts 'Copied out.css to clipboard.'
    end
end
