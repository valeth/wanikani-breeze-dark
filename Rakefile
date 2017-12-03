# frozen_string_literal: true

require 'rake/clean'
require 'scss_lint/rake_task'
require 'sass/plugin'

SCSSLint::RakeTask.new

CLEAN.include('tmp', '.sass_cache')

STYLISH_OPTIONS = %w[
  review-char-bg
  radicals-color
  kanji-color
  vocab-color
  burned-color
  review-reading-bg
  review-meaning-bg
  footer-image-url
].freeze

CSS_FILES = %w[
  wanikani_breeze_dark.user.css
  wanikani_breeze_dark-dev.user.css
  wanikani_breeze_dark.uso.css
].freeze

desc 'Build the CSS files from SCSS sources'
task :build do
  Sass::Plugin.options[:template_location] = 'stylesheets'
  Sass::Plugin.options[:css_location] = 'tmp'
  Sass::Plugin.update_stylesheets

  CSS_FILES.each do |css_file|
    open(File.join('compiled', css_file), 'w') do |outfile|
      tmp = File.read(File.join('tmp', css_file))

      STYLISH_OPTIONS.each do |opt|
        tmp.gsub!(%("/*[[#{opt}]]*/"), %(/*[[#{opt}]]*/))
      end

      outfile.truncate(0)
      outfile.write(tmp)
    end
  end
end

task :changes do
  changes = `git log --format="%ad | %s" --date=short`.split("\n")
  changes.reject! { |x| /(changelog|gitignore|readme|^merge)/i =~ x }
  puts changes.reverse
end

task test: :scss_lint

task default: :build
