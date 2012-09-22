class CreateCheckIns < ActiveRecord::Migration
  def up
    create_table :check_ins do |t|
      # we belong to a box
      t.integer :box_id

      # we belong to a box_class
      t.integer :box_class_id

      # we belong to a member
      t.integer :member_id

      t.timestamps
    end
  end

  def down
    drop_table :check_ins
  end
end
