module CatIpsum
  class Random
    class << self
      def seed
        @seed ||= ::Random.new_seed
      end

      def seed=(value)
        @seed = value
        reset!
        value
      end

      def reset!
        @randomizer = randomize
        true
      end

      def randomizer
        @randomizer ||= randomize
      end

      def randomize
        ::Random.new(seed)
      end

      def sample(array, count: 3)
        array.shuffle(random: randomizer).take(count)
      end
    end
  end
end
