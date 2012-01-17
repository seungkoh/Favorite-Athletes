require 'spec_helper'
describe Athlete do
  subject{ Athlete.new(:name => 'Michael Jordan', :sport => 'Basketball', :position => 'Shooting Guard', :number => 23) }
  
  it { should be_valid }
end