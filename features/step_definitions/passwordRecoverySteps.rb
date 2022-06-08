When('I click the button {string}') do |nameButton|
    click_on(nameButton)
    sleep 1
end

Then('i should see the message {string}') do |confirmationMessage|
    expect(page).to have_selector('div', text: confirmationMessage)
end