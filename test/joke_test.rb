require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  def test_it_exists
    joker = Joke.new({id: 1,
      question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    assert_instance_of Joke, joker
  end

  def test_queue_can_correctly_load_csv
    joker = Joke.new({id: 1,
      question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    joker.load_jokes("fixture.csv")

    assert_equal 10, joker.joke_bank.count
  end

  def test_it_can_read_attributes_from_csv
    joker = Joke.new({id: 1,
      question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    joker.load_jokes("fixture.csv")

    question = "Why did the strawberry cross the road?"
    answer   = "Because his mother was in a jam."

    assert_equal 1, joker.id
    assert_equal question, joker.question
    assert_equal answer, joker.answer
  end
end
