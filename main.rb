require 'sinatra'
require_relative 'lib/drama/sentences'

helpers do
  def generate_sentence
    # Splitting into an array is required for easily preventing duplicate vals
    sent = Drama::Sentences.sentence.split(/\s/)
    sent.each do |w|
      num = sent.index(w)
      w = w.gsub('[things]', Drama::Sentences.thing)
      w = w.gsub('[sites]', Drama::Sentences.site)
      w = w.gsub('[people]', Drama::Sentences.person)
      w = w.gsub('[says]', Drama::Sentences.says)
      w = w.gsub('[badsoft]', Drama::Sentences.badsoft)
      w = w.gsub('[function]', Drama::Sentences.function)
      w = w.gsub('[adj]', Drama::Sentences.adjective)
      w = w.gsub('[enormous]', Drama::Sentences.size)
      w = w.gsub('[price]', Drama::Sentences.price)
      w = w.gsub('[ac1]', Drama::Sentences.badverb)
      w = w.gsub('[packs]', Drama::Sentences.pack)
      w = w.gsub('[drama]', Drama::Sentences.drama)
      w = w.gsub('[code]', Drama::Sentences.code)
      w = w.gsub('[ban]', Drama::Sentences.ban)
      w = w.gsub('[activates]', Drama::Sentences.activation)
      sent[num] = w
    end

    # add_a_drama
    sent.join(' ')
  end
end

get '/' do
  erb :index
end
