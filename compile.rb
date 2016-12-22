#!/usr/bin/env ruby

# frozen_string_literal: true

require 'optparse'
require 'sass/plugin'

options = {}

parser =
  OptionParser.new do |opts|
    opts.banner = "Usage: #{__FILE__} [options]"

    opts.on('-c', '--copy', 'Copy generated output to clipboard') do |c|
      options[:copy] = c
    end
  end

parser.parse!

Sass::Plugin.options[:template_location] = './stylesheets'
Sass::Plugin.options[:css_location] = './tmp/out'
Sass::Plugin.options[:cache_location] = './tmp/sass_cache'
Sass::Plugin.update_stylesheets

css_base = <<~EOF
    @-moz-document domain(www.wanikani.com) {
    %{css}
    }
EOF

files = Dir['./tmp/out/**/*.css'].sort
puts "stitching together #{files.size} CSS files..."

to_insert = files.map { |file| File.read(file) }.join("\n")

stylish_css_doc = format(css_base, css: to_insert)

open('./tmp/out.css', 'w') do |outfile|
  outfile.truncate(0)
  outfile.write(stylish_css_doc)
end

if options[:copy]
  puts 'copying to clipboard...'
  system('cat ./tmp/out.css | xsel --input --primary')
end
