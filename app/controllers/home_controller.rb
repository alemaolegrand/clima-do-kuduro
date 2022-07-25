#frozen_string_literal: true

require 'net/http'

class HomeController < ApplicationController
  def index
    url = "https://api.openweathermap.org/data/2.5/weather?lat=-22.8582222&lon=-43.7778276&units=metric&appid=72a5b29af1b9220a2df1f0b161dd999d"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body) 
  end

end