require 'rails_helper'

RSpec.describe 'layouts/application' do
  let(:page) { Capybara.string(rendered) }

  it 'displays a link to the DCN meetup page' do
    render
    expect(page.find('nav .meetup-link')['href'])
      .to eq 'https://www.meetup.com/de-DE/digital-craftsmanship-nordoberpfalz/'
  end
end
