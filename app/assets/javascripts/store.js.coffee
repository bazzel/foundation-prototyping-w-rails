# http://emberjs.com/guides/models/defining-a-store/

App.Store = DS.Store.extend
  adapter: DS.FixtureAdapter.extend()

App.DinnerAdapter = DS.RESTAdapter.extend()
App.StarterAdapter = DS.RESTAdapter.extend()
App.DishAdapter = DS.RESTAdapter.extend()

App.ApplicationSerializer = DS.RESTSerializer.extend
  # This is temporary code (he, it's Ember...)
  # https://github.com/emberjs/data/commit/52411a0a2ac4002edff43423d6492037a3796e8d#L0R595
  normalize: (type, hash, property) ->
    normalized = {}
    normalizedProp = undefined
    for prop of hash
      if prop.substr(-3) is "_id"

        # belongsTo relationships
        normalizedProp = prop.slice(0, -3)
      else if prop.substr(-4) is "_ids"

        # hasMany relationship
        normalizedProp = Ember.String.pluralize(prop.slice(0, -4))
      else

        # regualarAttribute
        normalizedProp = prop
      normalizedProp = Ember.String.camelize(normalizedProp)
      normalized[normalizedProp] = hash[prop]
    @_super type, normalized, property

