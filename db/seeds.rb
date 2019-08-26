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

CustomerMeasurement.create!(
	[
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.first.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.second.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, customer_id: (Store.find_by(store_name: "Honore").customers.first.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, customer_id: (Store.find_by(store_name: "Honore").customers.second.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, customer_id: (Store.find_by(store_name: "Honore").customers.last.id)}
	]
	)

Order.create!(
	[
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Honore").employees.second.id, customer_id: (Store.find_by(store_name: "Honore").customers.first.id)},
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Honore").employees.second.id, customer_id: (Store.find_by(store_name: "Honore").customers.first.id)},
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Honore").employees.second.id, customer_id: (Store.find_by(store_name: "Honore").customers.last.id)},
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Diwan Sahib").employees.second.id, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.second.id)},
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Diwan Sahib").employees.second.id, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.id)},
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Diwan Sahib").employees.second.id, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.id)},
		{order_date: Date.today, trail_date: Date.today + 5, trail_status: "Not Done", delivery_date: Date.today + 15, delivery_status: "Not Done", remark: "we treat it well", stitching_cost: 10000, fabric_cost: 20000, stitching_advance: 3000, master_allocated: Store.find_by(store_name: "Diwan Sahib").employees.second.id, customer_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.id)}
	]
	)

OrderMeasurement.create!(
	[
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Diwan Sahib").customers.second.orders.first.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.orders.first.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.orders.second.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Diwan Sahib").customers.last.orders.third.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Honore").customers.first.orders.first.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Honore").customers.first.orders.second.id)},
		{upper_body_back_shape: "Normal", upper_body_stomach: "Large", upper_body_shoulder: "Square", lower_body_posture: "Bow Leg", jacket_or_shirt_length: 22, jacket_or_shirt_shoulder: 22, jacket_or_shirt_sleeve_length: 22, jacket_or_shirt_chest: 22, jacket_or_shirt_waist: 22, jacket_or_shirt_neck: 22, jacket_or_shirt_hip: 22, jacket_or_shirt_hale_back: 22, jacket_or_shirt_cross_back: 22, jacket_or_shirt_bicep: 22, jacket_or_shirt_cross_front: 22, jacket_or_shirt_arm_hole_round: 22, trouser_length: 22, trouser_crotch: 22, trouser_inseam: 22, trouser_waist: 22, trouser_hip: 22, trouser_knee: 22, trouser_thigh: 22, trouser_bottom: 22, trouser_f_low: 22, order_id: (Store.find_by(store_name: "Honore").customers.last.orders.first.id)}
	]
	)

ShirtStyle.create!(
	[
		{style_for: "Black linen", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.second.orders.first.id)},
		{style_for: "White Cotton", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.second.orders.first.id)},
		{style_for: "Black linen", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.third.orders.first.id)},
		{style_for: "Black linen", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.third.orders.second.id)},
		{style_for: "Black linen", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.third.orders.third.id)},
		{style_for: "Black linen", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Honore").customers.first.orders.first.id)},
		{style_for: "Black linen", style: "SB_Button", lapel: "Peak", vent: "Side Vent", pocket: "Slant", fit: "Slim Fit", sleeve_placket: "Vent", front_cut: "Round", master_comment: "Use white Thread, with lining", order_id: (Store.find_by(store_name: "Honore").customers.third.orders.first.id)}
	]
	)

TrouserStyle.create!(
	[
		{style_for: "Blue wool", belt: "Long", pleat: "Flat", pocket: "Cross", back_pocket: "2 Pockets", bottom: "Slant + Flap", loops: "One", fit: "Slim", master_comment: "Keep it office wear", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.second.orders.first.id)},
		{style_for: "Blue wool", belt: "Long", pleat: "Flat", pocket: "Cross", back_pocket: "2 Pockets", bottom: "Slant + Flap", loops: "One", fit: "Slim", master_comment: "Keep it office wear", order_id: (Store.find_by(store_name: "Diwan Sahib").customers.third.orders.first.id)},
		{style_for: "Blue wool", belt: "Long", pleat: "Flat", pocket: "Cross", back_pocket: "2 Pockets", bottom: "Slant + Flap", loops: "One", fit: "Slim", master_comment: "Keep it office wear", order_id: (Store.find_by(store_name: "Honore").customers.first.orders.second.id)},
		{style_for: "Blue wool", belt: "Long", pleat: "Flat", pocket: "Cross", back_pocket: "2 Pockets", bottom: "Slant + Flap", loops: "One", fit: "Slim", master_comment: "Keep it office wear", order_id: (Store.find_by(store_name: "Honore").customers.first.orders.second.id)},
		{style_for: "Blue wool", belt: "Long", pleat: "Flat", pocket: "Cross", back_pocket: "2 Pockets", bottom: "Slant + Flap", loops: "One", fit: "Slim", master_comment: "Keep it office wear", order_id: (Store.find_by(store_name: "Honore").customers.third.orders.first.id)}
	]
	)





