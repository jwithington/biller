#Creates fake customer records for database
# Commented out fields were not yet included in the app when
# code was added due to out of order viewing

task :fake => :environment do
	1000.times do
	Customer.create(name: Faker::Company.name,
									city: Faker::Address.city,
									zipcode: Faker::Address.zip.to_i,
									state: Faker::Address.state_abbr,
									email: Faker::Internet.email,
									employees: (rand * 100).to_i
									)
	end
end