class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://www.potterapi.com')
    response = conn.get("/v1/characters?key=#{ENV['POTTER_KEY']}&house=#{params[:house]}&orderOfThePhoenix=true")
    @students = JSON.parse(response.body)
  end
end
