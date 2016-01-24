require 'sinatra'
require_relative 'lib/drama/sentence_helper'

helpers SentenceHelper

get '/' do
  erb :index
end

get '/raw' do
  generate_sentence
end