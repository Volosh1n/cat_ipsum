# CatIpsum

This gem generates fake text based on cats' typical activities. Just use it like another Lorem Ipsum version.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cat_ipsum'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cat_ipsum

## Usage

#### Methods

```ruby
CatIpsum.sentence
# => "Swat at dog, inspect anything brought into the house, play time"

CatIpsum.paragraph
# => "Shake treat bag, chase imaginary bugs, why must they do that. Nap all day, stand in doorway, yawn so much. Play time, chew ipad power cord, ignore the human. Need to chase tail, hide when guests come over, throwup on your pillow. Hate dog, mark territory, go crazy"
```

`CatIpsum.sentences` and `CatIpsum.paragraphs` returns arrays of their original methods.

All of the methods could take integer parameter to configure count of sentence parts or elements in array.
Some examples:

```ruby
CatIpsum.sentence(1)
# => "Stand in front of the computer screen."

CatIpsum.sentence(2)
# => "Get on the high shelf, swat at dog."

CatIpsum.sentences(1)
#=> ["Play time, stretch, need to chase tail."]

CatIpsum.sentences(2)
#=> ["Sleep on keyboard, intently stare at the same spot, sweet beast.", "Intrigued by the shower, rub face on everything, burrow under covers."]

```

`CatIpsum.phrase` and `CatIpsum.phrases` are aliases to `CatIpsum.sentence` and `CatIpsum.sentence`.

#### Working with randomizing seeds

You can specify your seed to generate repeatable data. Also, seed can be reseted by `CatIpsum.reset!` method.
Example:

```ruby
CatIpsum.sentence
# => "Leave hair everywhere, shake treat bag, missing until dinner time"
CatIpsum::Random.reset!
# => true
CatIpsum.sentence
# => "Leave hair everywhere, shake treat bag, missing until dinner time"
```

## Using the same random seed as your tests

To get repeatable results in Rspec, you can do following:

```ruby
RSpec.configure do |config|
  config.before(:all)  { CatIpsum::Random.seed = config.seed }
  config.before { CatIpsum::Random.reset! }
end
```

cat_ipsum will now use the same random seed as Rspec, including seeds passed in using `--seed nnn` on the command line, and will return the same data every time that seed is used.
