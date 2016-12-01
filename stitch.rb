#!/usr/bin/env ruby

require 'erb'
require 'yaml'

YML = YAML.load_file('./colours.yml')

module Colours
    YML['colours'].each_pair do |key, value|
        self.const_set(key.upcase, value)
    end
end

module Shadow
    YML['shadows'].each_pair do |key, value|
        self.const_set(key.upcase, value)
    end
end

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

files = Dir['./stylesheets/**/*.css'].sort
puts "stitching together #{files.size} CSS files..."

files.each do |file|
    begin
        erb = ERB.new(File.read(file))
        erb.result.each_line { |l| to_insert << "  #{l}" }
    rescue NameError
        abort "Failed to parse file #{file}"
    end

    to_insert << "\n\n"
end

stylish_css_doc = format(css_base, css: to_insert)
stylish_css_doc.gsub!(/^\n/, "")
stylish_css_doc.gsub!(/^\s*$/, "")

outfile = open('out.css', 'w')
outfile.truncate(0)
outfile.write(stylish_css_doc)
outfile.close
