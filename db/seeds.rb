puts "Clearing old data..."
Company.destroy_all
Dev.destroy_all
Freebie.destroy_all


puts "Creating companies..."
company1 = Company.create(name: "Google", founding_year: 1998)
company2 = Company.create(name: "Facebook", founding_year: 2004)
company3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
company4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
dev1 = Dev.create(name: "Rick")
dev2 = Dev.create(name: "Morty")
dev3 = Dev.create(name: "Mr. Meseeks")
dev4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

company_id = Company.ids.sample
dev_id = Dev.ids.sample

Freebie.create(item_name: "Pencil", value: 3, company_id: company1.id, dev_id: dev1.id)
Freebie.create(item_name: "Coozie", value: 1, company_id: company2.id, dev_id: dev2.id)
Freebie.create(item_name: "Notebook", value: 5, company_id: company3.id, dev_id: dev3.id)
Freebie.create(item_name: "Coffee cup", value: 6, company_id: company4.id, dev_id: dev4.id)


# 10.times do
#   company_id = Company.ids.sample
#   dev_id = Dev.ids.sample
#   value = rand(1..20)
#   item_name = 
#   Freebie.create(company_id: company_id, dev_id: dev_id, value: value, item_name: "pencil")

puts "Seeding done!"
