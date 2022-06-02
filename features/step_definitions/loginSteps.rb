Then('if I press on {string} i should see the username {string}') do |nameButton,userName|
  click_on('Cuenta')
  sleep 1
  expect(page).to have_selector('h6', text: userName)
end

Then('{string} role') do |roleName|
  expect(page).to have_css('.MuiChip-label', text: roleName)
end