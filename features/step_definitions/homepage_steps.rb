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

Then('I see {int} upcoming events') do |count|
  expect(page.all('.event').length).to eq count
end

Then('the first event shows the title {string}') do |title|
  expect(page.first('.event')).to have_text title
end

Then('the first event shows the date {string}') do |date|
  expect(page.first('.event')).to have_text date
end

Then('the first event links to Meetup') do
  expect(page.first('.event')).to have_selector('a[href^=https\:\/\/www\.meetup\.com\/digital-craftsmanship-nordoberpfalz\/events\/]')
end
