require "./lib/joke"

class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name  = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  # def tell(name, joke)
  #   require "pry"; binding.pry
  #   name.learn(joke)
  # end
end
