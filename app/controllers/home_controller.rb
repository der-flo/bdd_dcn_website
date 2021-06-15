class HomeController < ApplicationController
  Event = Struct.new(:title, :date, :meetup_url)
  def index
    response = HTTP
      .get('https://api.meetup.com/digital-craftsmanship-nordoberpfalz/events')
      .to_s

    @events = JSON.parse(response).first(2).map do |item|
      Event.new(item['name'], Time.at(item['time'] / 1000).to_date, item['link'])
    end
  end
end
