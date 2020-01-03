# frozen_string_literal: true

require 'rake/clean'
require 'scss_lint/rake_task'
require 'sass/plugin'
require 'erb'
require 'json'

SCSSLint::RakeTask.new

CLEAN.include('tmp', '.sass_cache')

project_info = JSON.load(File.read('./project.json'))
PROJECT_VERSION = project_info["version"]
PROJECT_NAME = project_info["name"]

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

# Template variables
@development = false
@css_source = nil

def project_version
  format("#{PROJECT_VERSION}%{dev}", dev: (@development ? "-dev#{Time.now.to_i}" : nil))
end

def project_name
  format("#{PROJECT_NAME}%{dev}", dev: (@development ? ' (Dev)' : nil))
end

def write_to_compiled(filename)
  mkdir_p 'compiled', verbose: false
  open(File.join('compiled', filename), 'w') do |outfile|
    outfile.truncate(0)
    outfile.write(replace_options(yield))
  end
end

def replace_options(css)
  tmp = css
  STYLISH_OPTIONS.each do |opt|
    tmp.gsub!(%("/*[[#{opt}]]*/"), %(/*[[#{opt}]]*/))
  end
  tmp
end

desc 'Build the CSS files from SCSS sources'
task :build, [:env] do |_task, args|
  @development = args[:env]&.match?(/dev.*/) || false
  @css_source = File.read(File.join('tmp', 'main.css'))

  Sass::Plugin.options[:template_location] = File.join(SRC_DIR, 'stylesheets')
  Sass::Plugin.options[:css_location] = 'tmp'
  Sass::Plugin.update_stylesheets

  filename = 'wanikani_breeze_dark.user.css'

  write_to_compiled(filename) do
    erb_file = File.read(File.join(SRC_DIR, "#{filename}.erb"))
    ERB.new(erb_file).result
  end
end

task :changes do
  changes = `git log --format="%ad | %s" --date=short`.split("\n")
  changes.reject! { |x| /(changelog|gitignore|readme|^merge)/i =~ x }
  puts changes.reverse
end

task test: :scss_lint

task default: :build
