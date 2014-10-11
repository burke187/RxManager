 20.times do
 	user = User.create!(username: Faker::Name.name, password: "password")

 	10.times do
 		prescription = Prescription.create!(user_id: user.id, prescription_type: "glasses",
 			sph: 8.5, cyl: 7.3, axis: rand(0..180), bc: 7.4, diam: 13.9 )
 	10.times do
 		prescription = Prescription.create!(user_id: user.id, prescription_type: "contacts",
 			sph: -8.5, cyl: 7.3, axis: rand(0..180), bc: 7.4, diam: 13.9 )
 	end
 end
end
