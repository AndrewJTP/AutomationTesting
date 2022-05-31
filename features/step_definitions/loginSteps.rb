When('the password with {string}') do |string|
  fill_in 'password', with: string
end

When('press the {string} button') do |string|
  click_on(string)
  sleep 1
end

Then('if I press on {string} i should see the username {string}') do |string,string2|
  click_on('Cuenta')
  sleep 3
  expect(page).to have_selector('h6', text: string2)
end

Then('{string} role') do |string|
  expect(page).to have_css('.MuiChip-label', text: string)
end