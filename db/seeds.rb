# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all

Store.create!(
	[
		{store_name: "Honore", contact_person_name: "Vartik Kapoor", address: "H1, South-Ex part - 1", contact_number: "9555914970", email: "honore@gmail.com"},
		{store_name: "Diwan Sahib", contact_person_name: "Ramesh Dewan", address: "1453, Ghafar Market karol Bagh - 1", contact_number: "9555915768", email: "diwan@gmail.com"}

	]
	)

Employee.create!(
	[
		{employee_name: "Vijay", mobile: "1234567890", password_digest: "vijay@123", role: "sales", email: "vijay@gmail.com", aadhar_card_no: "xxx111xxx", store_id: (Store.find_by(store_name: "Honore").id)},
		{employee_name: "Ajay", mobile: "1234567890", password_digest: "ajay@123", role: "master", email: "vijay@gmail.com", aadhar_card_no: "xxx222xxx", store_id: (Store.find_by(store_name: "Honore").id)},
		{employee_name: "Ravi", mobile: "1234567890", password_digest: "ravi@123", role: "account", email: "ravi@gmail.com", aadhar_card_no: "xxx111xxx", store_id: (Store.find_by(store_name: "Honore").id)},
		{employee_name: "Amit", mobile: "1234567890", password_digest: "amit@123", role: "sales", email: "amit@gmail.com", aadhar_card_no: "xxx111xxx", store_id: (Store.find_by(store_name: "Diwan Sahib").id)},
		{employee_name: "Rajesh", mobile: "1234567890", password_digest: "rajesh@123", role: "master", email: "rajesh@gmail.com", aadhar_card_no: "xxx222xxx", store_id: (Store.find_by(store_name: "Diwan Sahib").id)},
		{employee_name: "Rohit", mobile: "1234567890", password_digest: "rohit@123", role: "account", email: "rohit@gmail.com", aadhar_card_no: "xxx111xxx", store_id: (Store.find_by(store_name: "Diwan Sahib").id)}
	]
	)

Customer.create!(
	[
		{customer_name: "Ritesh kapoor", contact_number: "9555914970", email: "ritesh@gmail.com",address: " xxx nnn xx", sales_person: Store.find_by(store_name: "Honore").employees.first.id, store_id: (Store.find_by(store_name: "Honore").id) },
		{customer_name: "Karan", contact_number: "9555914970", email: "ritesh@gmail.com",address: " xxx nnn xx", sales_person: Store.find_by(store_name: "Honore").employees.first.id, store_id: (Store.find_by(store_name: "Honore").id) },
		{customer_name: "Siddarth", contact_number: "9555914970", email: "ritesh@gmail.com",address: " xxx nnn xx", sales_person: Store.find_by(store_name: "Honore").employees.first.id, store_id: (Store.find_by(store_name: "Honore").id) },
		{customer_name: "Ritesh kapoor", contact_number: "9555914970", email: "ritesh@gmail.com",address: " xxx nnn xx", sales_person: Store.find_by(store_name: "Diwan Sahib").employees.first.id, store_id: (Store.find_by(store_name: "Diwan Sahib").id) },
		{customer_name: "Karan", contact_number: "9555914970", email: "ritesh@gmail.com",address: " xxx nnn xx", sales_person: Store.find_by(store_name: "Diwan Sahib").employees.first.id, store_id: (Store.find_by(store_name: "Diwan Sahib").id) },
		{customer_name: "Siddarth", contact_number: "9555914970", email: "ritesh@gmail.com",address: " xxx nnn xx", sales_person: Store.find_by(store_name: "Diwan Sahib").employees.first.id, store_id: (Store.find_by(store_name: "Diwan Sahib").id) }
	]
	)


