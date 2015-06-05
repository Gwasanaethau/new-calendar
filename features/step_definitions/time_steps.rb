require_relative '../../src/calendar'

Given(/^a Unix timestamp of "([^"]*)"$/) do |unix_stamp|
  @calendar = Calendar.new unix_stamp
end

Then(/^we see the short string of "([^"]*)"$/) do |output|
  pending # expect(@calendar.print_short).to eql output
end

Then(/^we see the unit string of "([^"]*)"$/) do |output|
  pending # expect(@calendar.print_unit).to eql output
end

Then(/^we see the long string of "([^"]*)"$/) do |output|
  pending # expect(@calendar.print_long).to eql output
end
