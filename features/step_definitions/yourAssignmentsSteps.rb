Then('I should see the {string} section') do |seccion|
    expect(page).to have_selector('span', text: seccion)
  end