Given("I'm on the homepage") do
  visit root_path
end

Then('I see some text paragraphs') do
  expect(page.all('p').length).to be > 2
end

Then('I see the DCN logo') do
  expect(page.find('.img-title')).to be_present
end

Then('I see photos of {int} grinning craftsmen') do |count|
  expect(page.all('.team-member img').length).to eq count
end

When('I click on {string}') do |element|
  click_on element
end

Then("I'm on the DCN meetup page") do
  expect(page.current_url).to eq 'https://www.meetup.com/de-DE/digital-craftsmanship-nordoberpfalz/'
end
