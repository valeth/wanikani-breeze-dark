#!/usr/bin/env ruby

require './colours'
require 'erb'


css_base = <<~EOF
    @namespace url(http://www.w3.org/1999/xhtml);

    /* INFO: this file has been generated
     *       visit https://gitlab.com/valeth/wanikani-breeze-dark
     *       for the individual css source files
     */

    @-moz-document domain(wanikani.com) {
    %{css}
    }
    EOF

to_insert = ''

Dir['./stylesheets/*.css'].each do |file|
    puts "appending #{file}"

    erb = ERB.new(File.read(file))
    erb.result.each_line do |line|
        to_insert << "  #{line}"
    end

    to_insert << "\n\n"
end

stylish_css_doc = format(css_base, css: to_insert)

outfile = open('stylish.css', 'w')
outfile.truncate(0)
outfile.write(stylish_css_doc)
outfile.close
