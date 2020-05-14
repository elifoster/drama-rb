require 'string-utility'
require_relative 'constants'

# The Sinatra helper for generating sentences.
module SentenceHelper
  using StringUtility

  # Generates a random dramatic sentence.
  # @return [String] The randomly generated sentence, with all "variables" removed.
  def generate_sentence
    # Splitting into an array is required for easily preventing duplicate vals
    sent = Drama::Constants::SENTENCES.sample.split(/\s/)
    sent.each do |w|
      num = sent.index(w)
      sent[num] = w % {
        things: Drama::Constants::THINGS.sample,
        sites: Drama::Constants::SITES.sample,
        people: Drama::Constants::PEOPLE.sample,
        says: Drama::Constants::SAYS.sample,
        badsoft: Drama::Constants::BADSOFT.sample,
        function: Drama::Constants::FUNCTIONS.sample,
        adj: Drama::Constants::ADJECTIVES.sample,
        enormous: Drama::Constants::SIZES.sample,
        price: Drama::Constants::PRICES.sample,
        ac1: Drama::Constants::BADVERBS.sample,
        packs: Drama::Constants::PACKS.sample,
        drama: Drama::Constants::DRAMA.sample,
        code: Drama::Constants::CODE.sample,
        ban: Drama::Constants::BANS.sample,
        activates: Drama::Constants::ACTIVATES.sample
      }
    end

    # add_a_drama
    sent.join(' ')
  end
end
