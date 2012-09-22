class BoxClass < ActiveRecord::Base
  belongs_to :box
  has_many :check_ins

  DAYS = [["Mon",0],["Tue",1],["Wed",2],["Thu",3],["Fri",4],["Sat",5],["Sun",6]]

  scope :monday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 0', box_id] } }
  scope :tuesday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 1', box_id] } }
  scope :wednesday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 2', box_id] } }
  scope :thursday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 3', box_id] } }
  scope :friday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 4', box_id] } }
  scope :saturday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 5', box_id] } }
  scope :sunday, lambda { |box_id| { :conditions => ['box_id = ? AND day = 6', box_id] } }

  #def days_hash
  #  days = {}
  #  days[:monday] = self.monday
  #  days[:tuesday] = self.tuesday
  #  days[:wednesday] = self.wednesday
  #  days[:thursday] = self.thursday
  #  days[:friday] = self.friday
  #  days[:saturday] = self.saturday
  #  days[:sunday] = self.sunday

  #  days
  #end
end
