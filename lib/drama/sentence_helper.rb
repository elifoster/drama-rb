require_relative 'constants'

# The Sinatra helper for generating sentences.
module SentenceHelper
  # Generates a random dramatic sentence.
  # @return [String] The randomly generated sentence, with all "variables" removed.
  def generate_sentence
    # Splitting into an array is required for easily preventing duplicate vals
    sent = Drama::Constants::SENTENCES.sample.split(/\s/)
    sent.each do |w|
      num = sent.index(w)
      w.gsub!('[things]', Drama::Constants::THINGS.sample)
      w.gsub!('[sites]', Drama::Constants::SITES.sample)
      w.gsub!('[people]', Drama::Constants::PEOPLE.sample)
      w.gsub!('[says]', Drama::Constants::SAYS.sample)
      w.gsub!('[badsoft]', Drama::Constants::BADSOFT.sample)
      w.gsub!('[function]', Drama::Constants::FUNCTIONS.sample)
      w.gsub!('[adj]', Drama::Constants::ADJECTIVES.sample)
      w.gsub!('[enormous]', Drama::Constants::SIZES.sample)
      w.gsub!('[price]', Drama::Constants::PRICES.sample)
      w.gsub!('[ac1]', Drama::Constants::BADVERBS.sample)
      w.gsub!('[packs]', Drama::Constants::PACKS.sample)
      w.gsub!('[drama]', Drama::Constants::DRAMA.sample)
      w.gsub!('[code]', Drama::Constants::CODE.sample)
      w.gsub!('[ban]', Drama::Constants::BANS.sample)
      w.gsub!('[activates]', Drama::Constants::ACTIVATES.sample)
      sent[num] = w
    end

    # add_a_drama
    sent.join(' ')
  end
end