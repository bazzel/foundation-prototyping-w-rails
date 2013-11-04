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
    dinner.save
  end

end
