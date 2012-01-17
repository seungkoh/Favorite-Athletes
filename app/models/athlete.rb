class Athlete < ActiveRecord::Base
  validates_presence_of :name, :sport, :position, :team
  validates_numericality_of :number, :only_integer => true, :greater_than_or_equal_to => 0
end
