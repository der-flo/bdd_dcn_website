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
    assign :events, [:foo, :bar, :bar, :baz]
    render
    expect(page.all('.event').length).to eq 4
  end
end
