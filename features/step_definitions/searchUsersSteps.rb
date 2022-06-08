When('select the option {string} as the criterion') do |criterio|
    page.select criterio, from: 'searchBy' 
end

When('I select the {string} option') do |filter|
    fill_in 'search-input', :with => filter 
    find('input').native.send_keys(:enter)
end

Then('I could see the Name {string} in the list') do |name|
    expect(page).to have_selector('div', text: name)
end
