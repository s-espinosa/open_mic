class Joke

  attr_reader :id, :question, :answer

  # def initialize(joke_hash = {id: 1, question: "funny q", answer: "punchline"})
  #
  #   @id = joke_hash[id]
  #   @question = joke_hash[question]
  #   @answer = joke_hash[answer]
  # end

  # def initialize(joke_hash)
  #   joke_hash.each do |k,v|
  #     instance_variable_set("@#{k}", v) unless v.nil?
  #   end
  # end

# Person = Struct.new(:first_name, :last_name, :age)
# person_hash = { first_name: "Foo", last_name: "Bar", age: 29 }
# person = Person.new(*person_hash.values_at(*Person.members))
# ==> <struct Person first_name="Foo", last_name="Bar", age=29>






end
