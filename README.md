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

```ruby
CatIpsum.sentence
# => "Swat at dog, inspect anything brought into the house, play time"

CatIpsum.paragraph
# => "Intrigued by the shower. Stare at ceiling, claw drapes, give attitude. Give attitude. Stare at ceiling, burrow under covers, why must they do that, give attitude, hunt anything that moves. Sleep on keyboard"
```

`CatIpsum.sentences` and `CatIpsum.paragraphs` returns arrays of their original methods.

`CatIpsum.phrase` and `CatIpsum.phrases` are aliases to `CatIpsum.sentence` and `CatIpsum.sentence`.
