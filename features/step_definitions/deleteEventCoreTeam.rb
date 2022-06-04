When('I click in the delete event button of {string}') do |nameOfEvent|
    nameOfEvent='[name=Eliminar_' + nameOfEvent + ']'
    find(nameOfEvent).click
    sleep 2
end
When('I click in the confirmation delete event button of {string}') do |nameOfEvent|
    nameOfButton='[name=eliminarevento' + nameOfEvent + ']'
    find(nameOfButton).click
    sleep 4
end
Then('the event {string} shouldnt exist') do |nameOfEvent|
    page.has_content?('Eliminar_'+nameOfEvent)
end