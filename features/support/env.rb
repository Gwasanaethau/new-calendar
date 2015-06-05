require 'simplecov'
require 'simplecov-json'
require 'codeclimate-test-reporter'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter,
  CodeClimate::TestReporter::Formatter
]
SimpleCov.command_name 'Cucumber'
SimpleCov.use_merging true
SimpleCov.start
