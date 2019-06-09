module CatIpsum
  class Random
    def self.seed
      @seed ||= ::Random.new_seed
    end

    def self.seed=(value)
      @seed = value
      reset!
      value
    end

    def self.reset!
      @randomizer = randomize
      true
    end

    def self.randomizer
      @randomizer ||= randomize
    end

    def self.randomize
      ::Random.new(seed)
    end

    def self.sample(array)
      array.shuffle(random: randomizer).take(3)
    end
  end
end
