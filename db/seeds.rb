def feed_them(course, dish_names)
  # Not everyone is hungry...
  consumers = Consumer.all.shuffle.first(rand(Consumer.count)+1)
  cnt = 0

  # Split into even groups...
  consumers.each_slice(rand(5)+3) do |group|
    # ...and feed them.
    dish = course.dishes.build(name: dish_names[cnt])
    dish.consumers = group
    cnt += 1
  end
end

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

main_course_names = [
  'Bacon-wrapped Beef Tenderloin Steaks with Smoked Paprika Butter',
  'Bacon, Tomato and Blue Cheese Focaccia Sandwich',
  'Bacon and Cheese Quiche',
  'Biscuits with Sausage Gravy',
  'Blue Cheese Stuffed Hamburgers',
  'B.L.A.T. Sandwich with Spicy Chipotle Mayonnaise',
  'Butternut Squash Hash with Mexican Chorizo and Eggs',
  'Cheddar, Chive, and Sour Cream Omelette',
  'Creamy Cauliflower Soup with Bacon, Cheddar, and Chives',
  'Crustless Quiche with Ham, Asparagus, and Gruyere',
  'Curried Chicken Salad',
  'Curried Turkey Salad with Apples, Cranberries, and Walnuts',
  'Easy Egg Salad',
  'Egg in a Nest',
  'Farfalle with Pistachio Cream Sauce',
  'Grilled Chicken and Pineapple Pizza',
  'Grilled Rib Eye with Havarti Horseradish Fondue',
  'Hearty Spinach and Sausage Soup',
  'Herbed Tuna Salad with Feta and Pine Nuts',
  'Homemade Sloppy Joes',
  'Horseradish Meatloaf',
  'Macaroni and Cheese with Bacon, Leeks, and Thyme',
  'Monster Meatball Sandwiches',
  'Pasta with Tomato-Cream Sauce and Fresh Basil',
  'Roasted Chicken Thighs and Cauliflower',
  'Simple Carne Asada',
  'Smoky Spiced Black-Eyed Peas with Bacon',
  'Southwestern Macaroni Casserole',
  'Spice Rubbed Flank Steak',
  'Spiced Turkey Burgers with Green Olives and Feta',
  'Spiked Egg Nog French Toast',
  'The Ultimate Manwich',
  'Three Bean Vegetarian Chili',
  'Tomato Paella with Chorizo',
  'Tofu in Coconut Sauce with Ginger and Lemongrass',
  'Tuna Noodle Casserole',
  'Tuscan Chicken Under a Brick',
  'Veggie Chili Beans and Rice',
  'Whole Wheat Pasta with Browned Butter and Mizithra Cheese'
]

dessert_names = [
  'Avocado Pie (Jagger Pie)',
  'Apple Cinnamon Buttermilk Cake',
  'Apple Galette',
  'Apricot Almond Tart',
  'Banana Cream Cheese Roll',
  'Banana Milkshake',
  'Basic Sugar Cookies',
  'Blackberry Lemon Crisp',
  'Blueberry and Strawberry Buttermilk Cake',
  'Blueberry Breakfast Bars',
  'Blueberry Lemon Cupcakes',
  'Brown Sugar Shortbread',
  'Brownie Ice Cream Sandwiches with Kahlua and Irish Cream',
  'Butterscotch Corn Flake Candy',
  'Butternut Squash Pudding',
  'Caramel Apple Pear Cake',
  'Caramel Cake',
  'Caramelized Butter Frosting',
  'Carrot Cake',
  'Coconut Lime Cake',
  'Coconut Cupcakes',
  'Cream Cheese Frosting',
  'Chai Snickerdoodles',
  'Chocolate Stout Cupcakes',
  'Cinnamon Vanilla Ice Cream',
  'Double Chocolate Pumpkin Cupcakes',
  'Easy Lemon Jello Cake',
  'Fresh Peach Cobbler',
  'Giant Lemon Sugar Cookies',
  'Grilled Peaches with Blue Cheese and Honey',
  'Heart-Shaped Cinnamon Rolls',
  'Honey Almond Mini Cheesecakes',
  'Hot Fudge Blondie Sundae',
  'Lemon Bars',
  'Lemon Buttermilk Popsicles',
  'Lemon Buttermilk Pound Cake',
  'Lemon Curd',
  'Lemon Granita',
  'Lemon Shortbread',
  'Madeleines',
  'Mini Cherry Cheesecakes',
  'Mini Orange Cheesecakes with Grand Marnier Cream',
  'Mini Pumpkin Cheesecakes With Cinnamon Cream',
  'Oatmeal Coconut Chocolate Chip Cookies',
  'Peach Sorbet',
  'Persimmon Cookies',
  'Praline Pumpkin Cake with Whipped Cream Frosting',
  'Pumpkin Doughnuts',
  'Pumpkin Roll',
  'Pumpkin Spice Cake',
  'Raspberry Almond Thumbprint Cookies',
  'Red Velvet Cake',
  'Rhubarb Blueberry Turnovers',
  'Scandinavian Rosettes',
  'Simple Yogurt Cake',
  'Snickerdoodles',
  'Sour Cream Pear Cake with Pecan Streusel',
  'Strawberry Ice Cream',
  'Strawberry Rhubarb Fool',
  'Strawberry Shortcake',
  'Tapioca Pudding with Vanilla and Lemon',
  'Vanilla Bean Cream Cheese Frosting'
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

    feed_them(dinner.build_starter(name: 'Starter'), starter_names.shuffle)
    feed_them(dinner.build_main_course(name: 'Main'), starter_names.shuffle)
    feed_them(dinner.build_dessert(name: 'Dessert'), dessert_names.shuffle)

    dinner.save
  end
end


