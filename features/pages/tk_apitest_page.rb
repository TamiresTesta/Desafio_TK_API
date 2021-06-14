#https://pokeapi.co/api/v2/pokemon/charmander

class TkApiTest
    include HTTParty
    require_relative '../hooks/tk_apirest_hook'
    base_uri "https://pokeapi.co/api/v2"
     
    def initialize()
      
    end
  
    def getPokemonCharmander ()
      self.class.get("/pokemon/charmander")
    end

  end