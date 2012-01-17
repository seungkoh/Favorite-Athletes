require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "name is required" do
    athlete = Athlete.new(:name => '', :sport => 'Football', :position => 'Running Back', :number => 24)
    assert !athlete.valid?
  end
  
  test "number must be integer" do
    athlete = Athlete.new(:name => 'Marshawn Lynch', :sport => 'Football', :position => 'Running Back', :number => 24.5)
    assert !athlete.valid?
  end
  
  test "valid case" do
    athlete = Athlete.new(:name => 'Marshawn Lynch', :sport => 'Football', :position => 'Running Back', :number => 24)
    assert athlete.valid?
  end  
end
