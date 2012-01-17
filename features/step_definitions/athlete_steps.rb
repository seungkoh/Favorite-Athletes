Given /^I am currently tracking a player named Lebron James$/ do
  @athlete = Athlete.new(:name => 'Lebron James', :sport => 'Basketball', :team => 'Cleveland Cavaliers', :position => 'Small Forward', :number => 6)
  @athlete.should be_valid
end

Given /^he is playing for the Cleveland Cavaliers$/ do
  @athlete.team.should eql('Cleveland Cavaliers')
end

When /^he is traded$/ do
  @athlete.team = 'Miami Heat'
end

Then /^his team should be updated to the Miami Heat$/ do
  @athlete.team.should eql('Miami Heat')
end