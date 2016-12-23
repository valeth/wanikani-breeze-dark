# frozen_string_literal: true

require 'scss_lint/rake_task'

SCSSLint::RakeTask.new

task default: [:compile]

task :compile do
    ruby 'compile.rb'
end

task :copy do
    ruby 'compile.rb -c'
end

task test: [:rubocop, :scsslint]

task :rubocop do
    sh 'rubocop'
end
