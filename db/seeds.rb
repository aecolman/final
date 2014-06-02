User.delete_all
jc = User.create("username" => "jazzyjeff", "password" => "hockey", "firstname" => "Jeff", "lastname" => "Cohen")
be = User.create("username" => "breezybrian", "password" => "baseball", "firstname" => "Brian", "lastname" => "Eng")
ac = User.create("username" => "antsyalex", "password" => "football", "firstname" => "Alex", "lastname" => "Colman")

Power.delete_all
el = Power.create("energy_source" => "Electric Only")
eg = Power.create("energy_source" => "Electric & Gas")
go = Power.create("energy_source" => "Gas Only")
hy = Power.create("energy_source" => "Hybrid Gas/Electric")

Car.delete_all
cv = Car.create("make" => "Chevy", "model" => "Volt", "msrp" => 34185, "hp" => 149, "drive_type" => eg.energy_source, "electric_range" => 38, "gas_range" => 342, "total_range" => 380, "hours_to_charge" => 4, "front_photo_url" => "http://media.ed.edmunds-media.com/chevrolet/volt/2014/evox/2014_chevrolet_volt_4dr-hatchback_base_fs_evox_1_500.jpg", "back_photo_url" => "http://media.ed.edmunds-media.com/chevrolet/volt/2014/evox/2014_chevrolet_volt_4dr-hatchback_base_rst_evox_1_500.jpg", "side_photo_url" => "http://media.ed.edmunds-media.com/chevrolet/volt/2014/evox/2014_chevrolet_volt_4dr-hatchback_base_pr_evox_1_500.jpg", "quarter_photo_url" => "http://media.ed.edmunds-media.com/chevrolet/volt/2014/evox/2014_chevrolet_volt_4dr-hatchback_base_fqh_evox_1_500.jpg")
nl = Car.create("make" => "Nissan", "model" => "Leaf", "msrp" => 28980, "hp" => 107, "drive_type" => el.energy_source, "electric_range" => 84, "gas_range" => 0, "total_range" => 84, "hours_to_charge" => 5, "front_photo_url" => "http://media.ed.edmunds-media.com/nissan/leaf/2014/evox/2014_nissan_leaf_4dr-hatchback_s_fs_evox_1_500.jpg", "back_photo_url" => "http://media.ed.edmunds-media.com/nissan/leaf/2014/evox/2014_nissan_leaf_4dr-hatchback_s_rst_evox_1_500.jpg", "side_photo_url" => "http://media.ed.edmunds-media.com/nissan/leaf/2014/evox/2014_nissan_leaf_4dr-hatchback_s_pr_evox_1_500.jpg", "quarter_photo_url" => "http://media.ed.edmunds-media.com/nissan/leaf/2014/evox/2014_nissan_leaf_4dr-hatchback_s_fqh_evox_1_500.jpg")
tm = Car.create("make" => "Tesla", "model" => "Model S", "msrp" => 69570, "hp" => 362, "drive_type" => el.energy_source, "electric_range" => 265, "gas_range" => 0, "total_range" => 265, "hours_to_charge" => 9, "front_photo_url" => "http://media.ed.edmunds-media.com/tesla/model-s/2013/evox/2013_tesla_model-s_sedan_performance_fs_evox_1_500.jpg", "back_photo_url" => "http://media.ed.edmunds-media.com/tesla/model-s/2013/evox/2013_tesla_model-s_sedan_performance_rst_evox_1_500.jpg", "side_photo_url" => "http://media.ed.edmunds-media.com/tesla/model-s/2013/evox/2013_tesla_model-s_sedan_performance_pr_evox_1_500.jpg", "quarter_photo_url" => "http://media.ed.edmunds-media.com/tesla/model-s/2013/evox/2013_tesla_model-s_sedan_performance_fqh_evox_1_500.jpg")

Trip.delete_all
Trip.create("user_id" => jc.id, "day" => 1, "miles" => 34)
Trip.create("user_id" => jc.id, "day" => 2, "miles" => 12)
Trip.create("user_id" => jc.id, "day" => 3, "miles" => 51)
Trip.create("user_id" => jc.id, "day" => 4, "miles" => 70)
Trip.create("user_id" => jc.id, "day" => 5, "miles" => 0)
Trip.create("user_id" => jc.id, "day" => 6, "miles" => 12)
Trip.create("user_id" => jc.id, "day" => 7, "miles" => 19)
Trip.create("user_id" => be.id, "day" => 1, "miles" => 42)
Trip.create("user_id" => be.id, "day" => 2, "miles" => 10)
Trip.create("user_id" => be.id, "day" => 3, "miles" => 0)
Trip.create("user_id" => be.id, "day" => 4, "miles" => 0)
Trip.create("user_id" => be.id, "day" => 5, "miles" => 102)
Trip.create("user_id" => be.id, "day" => 6, "miles" => 24)
Trip.create("user_id" => be.id, "day" => 7, "miles" => 38)
Trip.create("user_id" => ac.id, "day" => 1, "miles" => 10)
Trip.create("user_id" => ac.id, "day" => 2, "miles" => 20)
Trip.create("user_id" => ac.id, "day" => 3, "miles" => 30)
Trip.create("user_id" => ac.id, "day" => 4, "miles" => 40)
Trip.create("user_id" => ac.id, "day" => 5, "miles" => 50)
Trip.create("user_id" => ac.id, "day" => 6, "miles" => 60)
Trip.create("user_id" => ac.id, "day" => 7, "miles" => 70)

Review.delete_all
Review.create("car_id" => tm.id, "user_id" => jc.id, "comment" => "Shocking performance!")
Review.create("car_id" => tm.id, "user_id" => be.id, "comment" => "This car's got spark.")
Review.create("car_id" => cv.id, "user_id" => jc.id, "comment" => "Keeps up with the current of traffic.")
Review.create("car_id" => nl.id, "user_id" => be.id, "comment" => "Drives like lightning.")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
