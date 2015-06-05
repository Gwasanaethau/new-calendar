require 'simplecov'
require 'simplecov-json'
require 'codeclimate-test-reporter'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter
]
SimpleCov.command_name 'RSpec'
SimpleCov.use_merging true
SimpleCov.start
