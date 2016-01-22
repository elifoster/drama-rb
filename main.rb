require 'sinatra'
require_relative 'lib/drama/constants'

helpers do
  def generate_sentence
    # Splitting into an array is required for easily preventing duplicate vals
    sent = Drama::Constants::SENTENCES.sample.split(/\s/)
    sent.each do |w|
      num = sent.index(w)
      w = w.gsub('[things]', Drama::Constants::THINGS.sample)
      w = w.gsub('[sites]', Drama::Constants::SITES.sample)
      w = w.gsub('[people]', Drama::Constants::PEOPLE.sample)
      w = w.gsub('[says]', Drama::Constants::SAYS.sample)
      w = w.gsub('[badsoft]', Drama::Constants::BADSOFT.sample)
      w = w.gsub('[function]', Drama::Constants::FUNCTIONS.sample)
      w = w.gsub('[adj]', Drama::Constants::ADJECTIVES.sample)
      w = w.gsub('[enormous]', Drama::Constants::SIZES.sample)
      w = w.gsub('[price]', Drama::Constants::PRICES.sample)
      w = w.gsub('[ac1]', Drama::Constants::BADVERBS.sample)
      w = w.gsub('[packs]', Drama::Constants::PACKS.sample)
      w = w.gsub('[drama]', Drama::Constants::DRAMA.sample)
      w = w.gsub('[code]', Drama::Constants::CODE.sample)
      w = w.gsub('[ban]', Drama::Constants::BANS.sample)
      w = w.gsub('[activates]', Drama::Constants::ACTIVATES.sample)
      sent[num] = w
    end

    # add_a_drama
    sent.join(' ')
  end
end

get '/' do
  erb :index
end
