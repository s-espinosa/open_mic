class Joke
  attr_reader :id,
              :question,
              :answer,
              :joke_bank

  def initialize(joke)
    @id        = joke[:id]
    @question  = joke[:question]
    @answer    = joke[:answer]

    @joke_bank = []
  end

  def load_jokes(filename = "jokes.csv")
    contents = CSV.open filename, headers: true, header_converters: :symbol
    contents.each do |row|
      joke = Joke.new(row)
      @joke_bank << joke
    end
  end
end
