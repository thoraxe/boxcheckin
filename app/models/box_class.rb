class BoxClass < ActiveRecord::Base
  belongs_to :box

  def days_hash
    days = {}
    days[:monday] = self.monday
    days[:tuesday] = self.tuesday
    days[:wednesday] = self.wednesday
    days[:thursday] = self.thursday
    days[:friday] = self.friday
    days[:saturday] = self.saturday
    days[:sunday] = self.sunday

    days
  end
end
