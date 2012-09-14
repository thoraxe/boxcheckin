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

# 0 is monday
@classes = BoxClass.create([{
    :start_time => "07:00:00",
      :end_time => "08:00:00",
           :day => 0
}, {
    :start_time => "07:00:00",
      :end_time => "08:00:00",
           :day => 2
}, {
    :start_time => "07:00:00",
      :end_time => "08:00:00",
           :day => 4
}, {
    :start_time => "08:00:00",
      :end_time => "09:00:00",
           :day => 1
}, {
    :start_time => "15:00:00",
      :end_time => "16:00:00",
           :day => 3
}])
x = 0
@members = Member.create([{
                         :email => "erik+#{x+=1}@jumpshipservices.co",
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
                         :email => "erik+#{x+=1}@jumpshipservices.co",
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
}, {
                         :email => "erik+#{x+=1}@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Franklin E. Hsu",
                     :address_1 => "3431 Longview Avenue",
                          :city => "Jamaica",
                         :state => "NY",
                           :zip => "11432",
                         :phone => "718-558-3775",
             :emergency_contact => "Franklin E. Hsu",
               :emergency_phone => "718-558-3775"
}, {
                         :email => "erik+#{x+=1}@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Kevin D. Chafin",
                     :address_1 => "1366 Tyler Avenue",
                          :city => "Marathon",
                         :state => "FL",
                           :zip => "33050",
                         :phone => "718-558-3775",
             :emergency_contact => "Franklin E. Hsu",
               :emergency_phone => "718-558-3775"
}, {
                         :email => "erik+#{x+=1}@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Jamie T. Ventura",
                     :address_1 => "399 George Avenue",
                          :city => "Mobile",
                         :state => "AL",
                           :zip => "36610",
                         :phone => "718-558-3775",
             :emergency_contact => "Franklin E. Hsu",
               :emergency_phone => "718-558-3775"
}, {
                         :email => "erik+#{x+=1}@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Ryan J. Waterman",
                     :address_1 => "1793 Meadow View Drive",
                          :city => "Wethersfield",
                         :state => "CT",
                           :zip => "06109",
                         :phone => "718-558-3775",
             :emergency_contact => "Franklin E. Hsu",
               :emergency_phone => "718-558-3775"
}, {
                         :email => "erik+#{x+=1}@jumpshipservices.co",
                         :password => "boxcheckin",
                         :password_confirmation => "boxcheckin",
                          :name => "Kathleen P. Katzer",
                     :address_1 => "636 Hillhaven Drive",
                          :city => "Los Angeles",
                         :state => "CA",
                           :zip => "90033",
                         :phone => "718-558-3775",
             :emergency_contact => "Franklin E. Hsu",
               :emergency_phone => "718-558-3775"
}])
@box.members << @members
@box.box_classes << @classes
