require_relative '../../lib/drama/sentences'

module ApplicationHelper
  include Drama::Sentences

  def count_dramas
    File.read("#{Rails.root}/public/dramas.txt").chomp
  end

  def add_a_drama
    dramas = count_dramas.to_i
    new_content = dramas + 1
    File.write("#{Rails.root}/public/dramas.txt", new_content.to_s)
  end

  def generate_sentence
    # Splitting into an array is required for easily preventing duplicate vals
    sent = sentence.split(/\s/)
    sent.each do |w|
      num = sent.index(w)
      w = w.gsub('[things]', thing)
      w = w.gsub('[sites]', site)
      w = w.gsub('[people]', person)
      w = w.gsub('[says]', says)
      w = w.gsub('[badsoft]', badsoft)
      w = w.gsub('[function]', function)
      w = w.gsub('[adj]', adjective)
      w = w.gsub('[enormous]', size)
      w = w.gsub('[price]', price)
      w = w.gsub('[ac1]', badverb)
      w = w.gsub('[packs]', pack)
      w = w.gsub('[drama]', drama)
      w = w.gsub('[code]', code)
      w = w.gsub('[ban]', ban)
      w = w.gsub('[activates]', activation)
      sent[num] = w
    end

    add_a_drama
    sent.join(' ')
  end
end
