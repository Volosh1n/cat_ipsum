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
