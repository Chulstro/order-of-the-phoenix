class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://www.potterapi.com')
    query = "key=#{ENV['POTTER_KEY']}&house=#{params[:house]}&orderOfThePhoenix=true"
    response = conn.get("/v1/characters?#{query}")
    @students = JSON.parse(response.body)
  end
end
