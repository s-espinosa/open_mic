require 'pry'
# require 'joker'
require 'csv'
class User
  # include Joker
  attr_reader :name,
              :jokes,
              :learn,
              :perform_routine_for,
              :tell,
              :learn_rountine

  def initialize(name)
    @name = name
    @jokes = []

  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name,joke)
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    name.jokes << joke
  end

  def perform_routine_for(name)
    name.jokes << @jokes
    name.jokes.flatten!
  end

  def learn_routine(file)
        contents = CSV.open file, headers: true, header_converters: :symbol
        contents.map {|csv| @jokes << csv}
  end

end
