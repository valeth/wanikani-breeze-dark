#!/usr/bin/env ruby

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
Sass::Plugin.options[:css_location] = './out'
Sass::Plugin.update_stylesheets

css_base = <<~EOF
    @namespace url(http://www.w3.org/1999/xhtml);

    /* INFO: this file has been generated
    *       visit https://gitlab.com/valeth/wanikani-breeze-dark
    *       for the individual css source files
    */

    @-moz-document domain(www.wanikani.com) {
    %{css}
    }
    EOF

to_insert = ''
files = Dir['./out/**/*.css'].sort
puts "stitching together #{files.size} CSS files..."

files.each do |file|
    to_insert << "#{File.read(file)}\n"
end

stylish_css_doc = format(css_base, css: to_insert)

open('out.css', 'w') do |outfile|
    outfile.truncate(0)
    outfile.write(stylish_css_doc)
end

`cat ./out.css | xsel -b`
