User.destroy_all
u1 = User.create :email => 'tester1@email', :password => 'chicken', :admin => true 
u2 = User.create :email => 'tester2@email', :password => 'chicken'
puts "#{ User.count } users"

Car.destroy_all
c1 = Car.create :name => "Passat comfortline", :image => "/images/passat.jpg"
c2 = Car.create :name => "Audi TT Mk3 FV", :image => "/images/tt.jpg"
c3 = Car.create :name => "Polo GTI", :image => "/images/polo.jpg"
c4 = Car.create :name => "AMG A45", :image => "/images/a45.jpg"
c5 = Car.create :name => "AMG C-Class", :image => "/images/cclass.jpg"
c6 = Car.create :name => "AMG GLA", :image => "/images/gla.jpg"
c7 = Car.create :name => "Supra", :image => "/images/supra.jpg"
c8 = Car.create :name => "GR Corolla", :image => "/images/corolla.jpg"
c9 = Car.create :name => "Crown", :image => "/images/crown.jpg"
puts "#{ Car.count } cars"

Manufacturer.destroy_all
m1 = Manufacturer.create :name => "Audi", :founded => '1909-07-16', :location => 'Zwickau, Germany', :image => '/images/audilogo.jpg'
m2 = Manufacturer.create :name => "Volkswagen", :founded => '1937-05-28', :location => 'Berlin, Germany', :image => '/images/vw.jpg'
m3 = Manufacturer.create :name => "Toyota", :founded => '1937-08-28', :location => 'Japan', :image => '/images/toyota.png'
m4 = Manufacturer.create :name => "Mercedes", :founded => '1926-05-19', :location => 'Germany', :image => '/images/merc.png'
puts "#{ Manufacturer.count } manufacturers"

Engine.destroy_all
e1 = Engine.create :name => "EA888 - CJSA", :image => '/images/cjsa.jpg', :capacity => 1798, :hp => 180, :torque => 250, :mods => "Turbocharged, DOHC, 4 cylinder"
e2= Engine.create :name => "2JZ-GE", :image => '/images/2jz.jpg', :capacity => 2997, :hp => 227, :torque => 298, :mods => "Turbocharged, VVT-i, 6 cylinder"
e3= Engine.create :name => "M133", :image => '/images/m133.jpg', :capacity => 2000, :hp => 375, :torque => 475, :mods => "Turbocharged, fastest 4 cylinder engine ever made"
puts "#{ Engine.count } engines"

Trim.destroy_all
t1 = Trim.create :color => "Pearl White", :wheel_size => 19, :wheel_mat => "aluminium", :interior => "leather", :int_color => "black", :image => "/images/passat_int.jpg", :features => "electronic moving seats, airplay, heated seats", :sport => "null"
t2 = Trim.create :color => "White", :wheel_size => 20, :wheel_mat => "aluminium", :interior => "leather", :int_color => "black", :image => "/images/tt-int.jpg", :features => "electronic seats, digital dash, driving modes", :sport => "sport package"
t3 = Trim.create :color => "Red", :wheel_size => 18, :wheel_mat => "steel", :interior => "fabric", :int_color => "black and red", :image => "/images/poloint.jpg", :features => "electronic seats, digital dash, keyless start", :sport => "classic GTI red sport package"
t4 = Trim.create :color => "Midnight grey", :wheel_size => 20, :wheel_mat => "aluminium", :interior => "leather and carbon fibre", :int_color => "black and red", :image => "/images/a45int.jpg", :features => "cup holders, digital dash, keyless start", :sport => "Sport package"
t5 = Trim.create :color => "Deep black", :wheel_size => 20, :wheel_mat => "aluminium", :interior => "leather and carbon fibre", :int_color => "black and orange", :image => "/images/cclassint.jpg", :features => "hidden stowage compartments, digital dash, keyless start, folding mirrors", :sport => "Sport package"
t6 = Trim.create :color => "Space grey", :wheel_size => 21, :wheel_mat => "steel alloy", :interior => "leather and carbon fibre", :int_color => "black and red trim", :image => "/images/glaint.jpg", :features => "digital stretched dash, keyless start, folding mirrors", :sport => "Sport package"
t7 = Trim.create :color => "Blue", :wheel_size => 18, :wheel_mat => "Aluminium alloy", :interior => "Fabric", :int_color => "black", :image => "/images/supraint.jpg", :features => "simplistic, fun to drive and manual", :sport => "null"
t8 = Trim.create :color => "grey", :wheel_size => 19, :wheel_mat => "Steel alloy", :interior => "leather", :int_color => "black and red", :image => "/images/corollaint.jpg", :features => "digital sporty dash, manual transmission, compact size", :sport => "full sport package"
t9 = Trim.create :color => "White", :wheel_size => 17, :wheel_mat => "Steel", :interior => "Fabric", :int_color => "grey", :image => "/images/crownint.jpg", :features => "affordable luxury car, simple, reliable", :sport => "null"

puts "#{ Trim.count } trims"

puts "Users and cars"
u1.cars << c1
u1.cars << c2
u1.cars << c3
u1.cars << c4
u1.cars << c5
u1.cars << c6
u1.cars << c7
u1.cars << c8
u1.cars << c9

puts "Cars and manufacturer/trim/engine"
m2.cars << c1
m2.cars << c3
m1.cars << c2
m3.cars << c7
m3.cars << c8
m3.cars << c9
m4.cars << c4
m4.cars << c5
m4.cars << c6

c1.trims << t1
c2.trims << t2
c3.trims << t3
c4.trims << t4
c5.trims << t5
c6.trims << t6
c7.trims << t7
c8.trims << t8
c9.trims << t9

e1.cars << c1
e1.cars << c2
e1.cars << c3
e3.cars << c4
e3.cars << c5
e3.cars << c6
e2.cars << c7
e2.cars << c8
e2.cars << c9
