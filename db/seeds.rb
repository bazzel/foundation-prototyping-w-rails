Consumer.destroy_all

names = [
  'Ariejan de Vroom',
  'Arjan van der Gaag',
  'Jean Mertz',
  'Johan Hoekjan',
  'John van Arkelen',
  'Joost Saanen',
  'João Bernardino',
  'Marco Langenhuizen',
  'Niels Stevens',
  'Patrick Baselier',
  'Rudi van der Made',
  'Sander Voerman',
  'Yvon Winkelmolen',
  'Rui Salgado',
  'Bas Heijmann',
  'andy.maes@kabisa.nl',
  'Giel Raijmakers',
  'Harm de Laat',
  'Matthijs Groen',
  'Michel de Graaf',
  'Pascal Widdershoven',
  'Ralph Deguelle',
  'Remco Huijdts'
]

# http://pinchmysalt.com/recipe-list/
starter_names = [
'Artichoke Hummus',
'Baked White Bean Dip with Rosemary and Parmesan',
'Black Bean Dip',
'Blood Orange and Green Olive Salad',
'Bruschetta Three Ways',
'Chili Garlic Corn Chips',
'Chilled Ginger Cantaloupe Soup',
'Chipotle Bacon Deviled Eggs',
'Coconut Shrimp Poppers with Chili Mango Cream',
'Creamy Blue Cheese Dip with Lemon and Chives',
'Deviled Eggs',
'Herbed Cheddar Parmesan Crisps',
'Kettle Corn',
'Maple-Rosemary Glazed Walnuts',
'Nando’s Honey Garlic Wings',
'Pickled Serrano Chiles',
'Potato Taquitos',
'Pumpkin Spice Cream Cheese Spread',
'Roasted Red Pepper Hummus',
'Rosemary Garlic Sweet Potato Fries',
'Slow-Roasted Cherry Tomatoes',
'Smoked Tuna Dip',
'Spicy Pickled Garlic',
'Spinach and Feta Turnovers',
'Sun-dried Tomato Hummus',
'Sweet and Spicy Chinese Five Spice Roasted Almonds',
'Tzatziki Sauce (cucumber yogurt dip)',
'Whole Wheat Pita Chips',
'Blood Orange and Green Olive Salad',
'Broccoli Salad with Bacon and Raisins',
'Brown Rice Salad with Cumin and Lime Vinaigrette',
'Cilantro Caesar Salad with Carne Asada',
'Curry Artichoke Rice Salad',
'Fattoush',
'Grilled Corn, Mango and Jicama Salad with Honey Vinaigrette',
'Melon and Mozzarella Salad with Honey, Lime, and Mint',
'Orange Cranberry Green Salad with Walnuts and Blue Cheese',
'Shredded Brussels Sprouts with Bacon and Walnuts',
'Sweet and Spicy Cucumber Dill Salad',
'Spinach and Pomegranate Salad with Apples and Walnuts',
'Tangerine and Jicama Salad with Garlic and Cilantro',
'Warm Red Cabbage Slaw with Apple and Caraway Seeds',
'Whole Wheat Greek Orzo Salad',
'Butternut Squash and Chickpea Stew with Israeli Couscous',
'Carrot Potato Cheese Soup with Corn',
'Chick Pea Soup with Ginger and Coriander',
'Chilled Ginger Cantaloupe Soup',
'Creamy Fennel and Leek Soup',
'Creamy Cauliflower Soup with Bacon, Cheddar, and Chives',
'Creamy Chilled Cucumber and Avocado Soup',
'Creamy Roasted Cauliflower and Artichoke Soup',
'Creamy Spinach Soup',
'Edamame and Pea Soup with Herbed Lemon Cream',
'Hearty Spinach and Sausage Soup',
'Potato Leek Soup',
'Roasted Autumn Vegetable Chowder',
'Smoky Spiced Black-Eyed Peas with Bacon',
'Spicy Pumpkin Soup with Cilantro Pepita Pesto'
]

names.each do |name|
  Consumer.new.tap do |consumer|
    consumer.name = name
    consumer.save
  end
end


Dinner.destroy_all

I18n.locale = 'nl'

100.times do
  Dinner.new.tap do |dinner|
    dinner.venue = Faker::Company.name
    dinner.address = [Faker::Address.street_address, Faker::Address.city].join(', ')
    dinner.starts_at = (rand*500-400).days.from_now
    dinner.lat = "%9.7f" % (rand*2+51)
    dinner.lng = "%9.7f" % (rand*2+5)

    dinner.build_starter(name: 'Starter')

    (rand(6)+5).times do
      dinner.starter.dishes.build(name: starter_names.sample)
    end
    dinner.save
  end

end
