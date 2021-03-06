User.destroy_all
EmpanadaType.destroy_all
Order.destroy_all
OrderedEmpanada.destroy_all

master = User.create!(name: "Empanada Master", username: "empanadamaster", email: "toby.email", password: "master")
alyssa = User.create!(name: "Alyssa", username: "alyssa", email: "alyssa.email", password: "123456")
graham = User.create!(name: "Graham", username: "graham", email: "graham.email", password: "123456")
avner = User.create!(name: "Avner", username: "avner", email: "avner.email", password: "123456")

EmpanadaType.create(name: "Beef")
EmpanadaType.create(name: "Malbec Beef")
EmpanadaType.create(name: "Spinach")
EmpanadaType.create(name: "Corn")
EmpanadaType.create(name: "Nutella")

order_one = Order.create(eater: alyssa, paid: false, payment_type: "Cash", delivery_date: "October 6".to_date)
order_one.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 1, quantity: (rand(3) + 1))
order_one.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 2, quantity: (rand(3) + 1))
order_one.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 3, quantity: (rand(3) + 1))

order_two = Order.create(eater: graham, paid: false, payment_type: "Venmo", delivery_date: "October 13".to_date)
order_two.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 4, quantity: (rand(3) + 1))
order_two.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 5, quantity: (rand(3) + 1))
order_two.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 1, quantity: (rand(3) + 1))

order_three = Order.create(eater: avner, paid: true, payment_type: "Cash", delivery_date: "October 6".to_date)
order_three.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 2, quantity: (rand(3) + 1))
order_three.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 3, quantity: (rand(3) + 1))
order_three.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 4, quantity: (rand(3) + 1))

order_four = Order.create(eater: avner, paid: false, payment_type: "Venmo", delivery_date: "October 13".to_date)
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 5, quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 1, quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 2, quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 3, quantity: (rand(3) + 1))
order_four.ordered_empanadas << OrderedEmpanada.create(empanada_type_id: 4, quantity: (rand(3) + 1))
