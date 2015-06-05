require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'reek/rake/task'
require 'coveralls/rake/task'

Reek::Rake::Task.new :reek do |t|
  t.fail_on_error = false
  t.source_files = 'src/**/*.rb'
  t.config_files = '.reek'
end

desc 'Check for code smells (verbose)'
task :preek do
  sh 'preek smell .'
end

RuboCop::RakeTask.new :cop do |t|
  t.fail_on_error = false
end

RSpec::Core::RakeTask.new :rspec do |t|
  t.verbose = false
  t.rspec_opts = '--format progress'
end

Cucumber::Rake::Task.new :cucumber do |t|
  t.cucumber_opts = '--format progress'
end

desc 'Run RSpec code examples (verbose)'
RSpec::Core::RakeTask.new :rspec_v do |t|
  t.verbose = false
  t.rspec_opts = '--format documentation'
end

desc 'Run Cucumber features (verbose)'
Cucumber::Rake::Task.new :cucumber_v do |t|
  t.cucumber_opts = '--format pretty'
end

Coveralls::RakeTask.new

task default: [:cop, :reek, :rspec, :cucumber, 'coveralls:push']
task v: [:cop, :preek, :rspec_v, :cucumber_v]
