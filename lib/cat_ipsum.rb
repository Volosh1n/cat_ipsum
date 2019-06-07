require 'cat_ipsum/version'
require 'cat_ipsum/cat_actions'

module CatIpsum
  extend self

  def sentence
    result = []
    rand(1..5).times do
      result << CAT_ACTIONS.sample
    end
    result.join(', ').capitalize
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
end
