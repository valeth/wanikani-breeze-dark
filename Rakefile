# frozen_string_literal: true

require 'rake/clean'
require 'scss_lint/rake_task'
require 'sass/plugin'
require 'erb'

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

SRC_DIR = 'src'

@development = false
@css_source = nil

def project_version
  format('1.0.2%{dev}', dev: (@development ? '-dev' : nil))
end

def project_name
  format('WaniKani Breeze Dark%{dev}', dev: (@development ? ' (Dev)' : nil))
end

def replace_options(css)
  tmp = css
  STYLISH_OPTIONS.each do |opt|
    tmp.gsub!(%("/*[[#{opt}]]*/"), %(/*[[#{opt}]]*/))
  end
  tmp
end

task :build_usercss, [:env] => :build do |_task, args|
  @development = args[:env]&.match?(/dev.*/) || false
  filename = 'wanikani_breeze_dark%{dev}.user.css'
  compiled = format(filename, dev: (@development ? '-dev' : nil))

  @css_source = File.read(File.join('tmp', 'main.css'))
  erb_file = File.read(File.join(SRC_DIR, "#{format(filename, dev: nil)}.erb"))
  erb_result = ERB.new(erb_file).result

  open(File.join('compiled', compiled), 'w') do |outfile|
    outfile.truncate(0)
    outfile.write(replace_options(erb_result))
  end
end

desc 'Build the CSS files from SCSS sources'
task :build do
  Sass::Plugin.options[:template_location] = File.join(SRC_DIR, 'stylesheets')
  Sass::Plugin.options[:css_location] = 'tmp'
  Sass::Plugin.update_stylesheets
end

task :changes do
  changes = `git log --format="%ad | %s" --date=short`.split("\n")
  changes.reject! { |x| /(changelog|gitignore|readme|^merge)/i =~ x }
  puts changes.reverse
end

task test: :scss_lint

task default: :build_usercss
