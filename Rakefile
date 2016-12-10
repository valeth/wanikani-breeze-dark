# frozen_string_literal: true

task :default do
  sh 'sass --update stylesheets:out'
  ruby 'stitch.rb'
end

task :watch do
  sh 'sass --watch stylesheets:out'
end
