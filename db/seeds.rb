# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

catigories = [
  {
    name: 'Mac',
    products: ['MackBook', 'iMac', 'iMac Pro']
  }, {
    name: 'iPad',
    products: ['iPad Pro', 'iPad Air', 'iPad mini']
  }, {
    name: 'iPhone',
    products: ['iPhone 11 Pro', 'iPhone 11', 'iPhone Xr']
  }, {
    name: 'Wath',
    products: ['Apple Watch Series 5', 'Apple Watch Nike']
  }]

colors = ['Red', 'White', 'Black', 'Green', 'Blue']


def create_catigory(catigories)
  catigories.each do |c|
    cat = Catigory.create!(name: c[:name])
    create_catigory_product(cat, c[:products])
  end
end

def create_colors(colors)
  colors.each do |c|
    Color.create!(name: c)
    puts "Color #{c} created"
  end
end

def create_catigory_product(c, product)
  product.each do |product|

    colors = Color.all

    color = colors.sample

    color_id = color.id

    Product.create!(catigory_id: c.id, name: product, color_id: color_id)
  end
end

create_colors(colors)
create_catigory(catigories)
