class CreateBoxClasses < ActiveRecord::Migration
  def up
    create_table :box_classes do |t|

      # we belong to a particular box
      t.integer :box_id

      # the start and end times
      t.time :start_time
      t.time :end_time

      t.boolean :monday, :default => false
      t.boolean :tuesday, :default => false
      t.boolean :wednesday, :default => false
      t.boolean :thursday, :default => false
      t.boolean :friday, :default => false
      t.boolean :saturday, :default => false
      t.boolean :sunday, :default => false

      t.timestamps
    end
  end

  def down
    drop_table :box_classes
  end
end
