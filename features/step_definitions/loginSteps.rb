Given('I am located on the homepage of StartApp') do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/'
  end
  
  Given('I click the {string} button') do |string|
    click_on("Iniciar Sesión")
    sleep 1
  end
  
  When('I fill the email with {string}') do |string|
    fill_in 'email', with: string
  end

  When('I fill the password with {string}') do |string|
    fill_in 'password', with: string
  end
  
  When('I click the button INICIAR SESION') do
    click_on('INICIAR SESION')
    sleep 1
  end
  

  Then('if I click on Cuenta i should see the username {string}') do |string|
    click_on('Cuenta')
    sleep 1
    expect(page).to have_selector('h6', text: string % string2)
  end
  
  Then('{string} role') do |string|
    expect(page).to have_css('.MuiChip-label', text: string)
  end