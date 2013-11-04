# http://emberjs.com/guides/models/defining-a-store/

App.Store = DS.Store.extend
  adapter: DS.FixtureAdapter.extend()

App.DinnerAdapter = DS.RESTAdapter.extend()
