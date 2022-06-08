When('I click in {string} participation button') do |nameOfEvent|
    buttonParticipar='[name=participar_' + nameOfEvent + ']'
    find(buttonParticipar).click
    sleep 2
end
Then('i should see the message in snakbar {string}') do |contentMessage|
    expect(page).to have_selector('div', text: contentMessage)
    sleep 3
end