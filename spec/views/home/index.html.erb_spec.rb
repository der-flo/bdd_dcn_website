require 'rails_helper'

RSpec.describe 'home/index' do
  let(:page) { Capybara.string(rendered) }

  before { assign :events, [] }

  it 'displays 5 text paragraphs' do
    render
    expect(page.all('#info p').length).to eq 5
  end

  it 'displays the DCN logo' do
    render
    expect(page.find('.img-title')).to be_present
  end

  it 'displays 4 members' do
    render
    expect(page.all('.team-member img').length).to eq 4
  end

  it 'displays provided events' do
    assign :events, [
      OpenStruct.new(title: '1. Event', date: Date.new(2021, 11, 12)),
      OpenStruct.new(title: '2. Event', date: Date.new(2021, 11, 13)),
      OpenStruct.new(title: '3. Event', date: Date.new(2021, 11, 14)),
      OpenStruct.new(title: '4. Event', date: Date.new(2021, 11, 15))
    ]
    render
    expect(page.all('.event').length).to eq 4
  end

  it "displays event's attributes" do
    assign :events, [OpenStruct.new(title: '1. Event', date: Date.new(2021, 11, 12), meetup_url: 'https://test.example/')]
    render
    expect(page.first('.event'))
      .to have_selector('h3', text: '1. Event')
      .and have_selector('h4', text: '12.11.2021')
      .and have_selector('a[href=https\:\/\/test\.example\/]')
  end
end
