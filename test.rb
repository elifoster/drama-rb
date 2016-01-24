require 'minitest/autorun'
require_relative 'lib/drama/sentence_helper'

class TestHelper
  include SentenceHelper
end

describe 'Sentence Helper' do
  let(:helpers) { TestHelper.new }

  it 'should be a non-empty string' do
    sentence = helpers.generate_sentence
    sentence.must_be_instance_of(String)
    sentence.wont_be_nil
    sentence.wont_be_empty
  end
end