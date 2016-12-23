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

stylish_css = <<~EOF
    @-moz-document domain(www.wanikani.com) {
#{File.read('./tmp/out/main.css')}
    }
EOF

open('./tmp/out.css', 'w') do |outfile|
    outfile.truncate(0)
    outfile.write(stylish_css)
end

if options[:copy]
    puts 'copying to clipboard...'
    system('cat ./tmp/out.css | xsel --input --primary')
end
