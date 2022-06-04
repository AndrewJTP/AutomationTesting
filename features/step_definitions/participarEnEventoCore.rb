When('I click in {string} participation button') do |nameOfEvent|
    buttonParticipar='[name=participar_' + nameOfEvent + ']'
    find(buttonParticipar).click
    sleep 2
end