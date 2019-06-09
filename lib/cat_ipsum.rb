require 'cat_ipsum/version'
require 'cat_ipsum/cat_actions'
require 'cat_ipsum/random'

module CatIpsum
  extend self

  def sentence(actions_count = 3)
    Random.sample(CAT_ACTIONS.dup, count: actions_count).join(', ').capitalize + '.'
  end

  alias phrase sentence

  def sentences(sentences_count = 5)
    (1..sentences_count).map { sentence }
  end

  alias phrases sentences

  def paragraph(sentences_count = 5)
    sentences(sentences_count).join(' ')
  end

  def paragraphs(paragraphs_count = 5)
    (1..paragraphs_count).map { paragraph }
  end
end
