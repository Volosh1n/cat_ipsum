require 'cat_ipsum/version'
require 'cat_ipsum/cat_actions'

module CatIpsum
  extend self

  attr_writer :seed

  def sentence
    sample(CAT_ACTIONS.dup).join(', ').capitalize
  end

  alias phrase sentence

  def sentences(sentence_count = 5)
    (1..sentence_count).map { sentence }
  end

  alias phrases sentences

  def paragraph
    sentences.join('. ')
  end

  def paragraphs(paragraph_count = 5)
    (1..paragraph_count).map { paragraph }
  end

  def reset!
    @seed = nil
    true
  end

  private

  attr_reader :seed

  def sample(array)
    randomizer = seed ? Random.new(seed) : Random.new
    array.shuffle(random: randomizer).take(3)
  end
end
