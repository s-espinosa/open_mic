class Joke
attr_reader   :id,
              :question,
              :answer

  def initialize(arguments)
    @id      = arguments[:id]
    @question   = arguments[:question]
    @answer    = arguments[:answer]

  end

end
