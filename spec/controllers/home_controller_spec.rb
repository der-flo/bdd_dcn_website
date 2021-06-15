require 'rails_helper'

RSpec.describe HomeController do
  describe '#index' do
    it 'provides 2 events' do
      get :index
      expect(assigns(:events)).to have(2).items
    end

    it 'prepares event with a title' do
      get :index
      events = assigns(:events)
      expect(events.first).to have_attributes(title: 'Behaviour Driven Development (Live-Coding-Session)',
                                              date: Date.new(2021, 6, 15),
                                              meetup_url: 'https://www.meetup.com/digital-craftsmanship-nordoberpfalz/events/276327755/'
                              )
      expect(events.second).to have_attributes(title: 'Serverless Development in der AWS-Cloud',
                                               date: Date.new(2021, 7, 20),
                                               meetup_url: 'https://www.meetup.com/digital-craftsmanship-nordoberpfalz/events/277976383/')
    end
  end
end
