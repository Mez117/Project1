User.destroy_all
u1 = User.create :email => 'tester1@email', :password => 'chicken', :admin => true 
u2 = User.create :email => 'tester2@email', :password => 'chicken'
puts "#{ User.count } users"

Car.destroy_all
c1 = Car.create :name => "Passat 132tsi comfortline", :image => "/images/passat.jpg"
puts "#{ Car.count } cars"

Manufacturer.destroy_all
m1 = Manufacturer.create :name => "Volkswagen", :founded => '1937-05-28', :location => 'Berlin, Germany'
puts "#{ Manufacturer.count } manufacturers"

Engine.destroy_all
e1 = Engine.create :name => "EA888 - CJSA", :image => '/images/cjsa.jpg', :capacity => 1798, :hp => 180, :torque => 250, :mods => "Turbocharged, DOHC"
puts "#{ Engine.count } engines"

Trim.destroy_all
t1 = Trim.create :color => "Pearl White", :wheel_size => 19, :wheel_mat => "aluminium", :interior => "leather", :int_color => "black", :image => "/images/passat_int", :features => "electronic moving seats, airplay, heated seats", :sport => "null"
puts "#{ Trim.count } trims"

puts "Users and cars"
u1.cars << c1

puts "Cars and manufacturer/trim/engine"
m1.cars << c1
c1.trim = t1
c1.save
e1.cars << c1
