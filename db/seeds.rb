Customer.delete_all
Good.delete_all
Store.delete_all

customer1 = Customer.create(name: "Jim")
customer2 = Customer.create(name: "Bob")
customer3 = Customer.create(name: "Tim")
good1 = Good.create(name: "Eggs")
good2 = Good.create(name: "Tires")
good3 = Good.create(name: "Tape")
store1 = Store.create(name: "walmart")
store2 = Store.create(name: "pepboys")
store3 = Store.create(name: "staples")

store1.customers << customer1
store1.customers << customer2
store1.customers << customer3

store2.customers << customer2

store3.customers << customer1
store3.customers << customer3

store1.goods << good1
store1.goods << good2
store1.goods << good3

store2.goods << good2
store2.goods << good3

store3.goods << good3