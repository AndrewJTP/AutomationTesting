When('I click the button {string}') do |string|
    click_on(string)
    sleep 1
end

Then('i should see the message {string}') do |string|
    expect(page).to have_selector('div', text: string)
end