require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  def test_it_exists
    joke = Joke.new({id: 1,
      question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    assert_instance_of Joke, joke
  end

  def test_queue_can_correctly_load_csv
    joke = Joke.new({id: 1,
      question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    joke.load_jokes("./data/fixture.csv")

    assert_equal 10, joke.joke_bank.count
  end

  def test_it_can_read_attributes_from_csv
    joke = Joke.new({id: 1,
      question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    joke.load_jokes("./data/fixture.csv")

    question = "Why did the strawberry cross the road?"
    answer   = "Because his mother was in a jam."

    assert_equal 1, joke.id
    assert_equal question, joke.question
    assert_equal answer, joke.answer
  end
end
