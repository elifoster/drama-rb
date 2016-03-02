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
      w.safely_gsub!('[things]', Drama::Constants::THINGS.sample)
      w.safely_gsub!('[sites]', Drama::Constants::SITES.sample)
      w.safely_gsub!('[people]', Drama::Constants::PEOPLE.sample)
      w.safely_gsub!('[says]', Drama::Constants::SAYS.sample)
      w.safely_gsub!('[badsoft]', Drama::Constants::BADSOFT.sample)
      w.safely_gsub!('[function]', Drama::Constants::FUNCTIONS.sample)
      w.safely_gsub!('[adj]', Drama::Constants::ADJECTIVES.sample)
      w.safely_gsub!('[enormous]', Drama::Constants::SIZES.sample)
      w.safely_gsub!('[price]', Drama::Constants::PRICES.sample)
      w.safely_gsub!('[ac1]', Drama::Constants::BADVERBS.sample)
      w.safely_gsub!('[packs]', Drama::Constants::PACKS.sample)
      w.safely_gsub!('[drama]', Drama::Constants::DRAMA.sample)
      w.safely_gsub!('[code]', Drama::Constants::CODE.sample)
      w.safely_gsub!('[ban]', Drama::Constants::BANS.sample)
      w.safely_gsub!('[activates]', Drama::Constants::ACTIVATES.sample)
      sent[num] = w
    end

    # add_a_drama
    sent.join(' ')
  end
end