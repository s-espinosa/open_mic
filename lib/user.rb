require "csv"
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

  def tell(name, joke)
    name.learn(joke)
  end

  def perform_routine_for(name)
    routine = name.jokes << @jokes
    routine.flatten!
  end

  def learn_routine(routine)
    contents = CSV.open routine, headers: true, header_converters: :symbol
    contents.each do |row|
      joke = Joke.new(row)
      @jokes << joke
    end
  end
end
