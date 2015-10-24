require_relative 'constants'

module Drama
  module Sentences
    extend self

    @last_person = nil
    def random(array)
      int = rand(array.size)
      array.at(int).chomp
    end

    def person
      random(Drama::Constants::PEOPLE)
    end

    def site
      random(Drama::Constants::SITES)
    end

    def thing
      random(Drama::Constants::THINGS)
    end

    def pack
      random(Drama::Constants::PACKS)
    end

    def function
      random(Drama::Constants::FUNCTIONS)
    end

    def drama
      random(Drama::Constants::DRAMA)
    end

    def adjective
      random(Drama::Constants::ADJECTIVES)
    end

    def badsoft
      random(Drama::Constants::BADSOFT)
    end

    def crash
      random(Drama::Constants::CRASHES)
    end

    def ban
      random(Drama::Constants::CRASHES)
    end

    def code
      random(Drama::Constants::CODE)
    end

    def adverb
      random(Drama::Constants::ADVERBS)
    end

    def badverb
      random(Drama::Constants::BADVERBS)
    end

    def price
      random(Drama::Constants::PRICES)
    end

    def activation
      random(Drama::Constants::ACTIVATES)
    end

    def says
      random(Drama::Constants::SAYS)
    end

    def size
      random(Drama::Constants::SIZES)
    end

    def sentence
      random(Drama::Constants::SENTENCES)
    end
  end
end
