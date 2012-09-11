# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

# delete all admins, then create
Admin.all.each do |a|
  a.destroy
end
@admin = Admin.create(
                     :email => "erik@jumpshipservices.co",
                     :password => "boxcheckin",
                     :password_confirmation => "boxcheckin"
                    )

# delete all the boxes, then create -- this should kill the members and classes, too
Box.all.each do |b|
  b.destroy
end
@box = Box.create(
                 :email => "erik+cfh@jumpshipservices.co",
                 :password => "boxcheckin",
                 :password_confirmation => "boxcheckin",
                      :name => "Crossfit Huntersville",
                 :address_1 => "14125 Statesville Rd",
                 :address_2 => "",
                      :city => "Huntersville",
                     :state => "NC",
                       :zip => "28078",
                     :phone => "704-756-5887"
                )

@members = Member.create([{
                         :email => "erik+robsouza@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Robert B. Souza",
                     :address_1 => "1191 Cody Ridge Road",
                          :city => "Durant",
                         :state => "OK",
                           :zip => "74701",
                         :phone => "580-509-7329",
             :emergency_contact => "Robert B. Souza",
               :emergency_phone => "580-509-7329"
}, {
                         :email => "erik+leslieprom@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Leslie J. Prom",
                     :address_1 => "1034 John Daniel Drive",
                          :city => "Steele",
                         :state => "MO",
                           :zip => "63877",
                         :phone => "573-695-3054",
             :emergency_contact => "Leslie J. Prom",
               :emergency_phone => "573-695-3054"
}])
@box.members << @members
