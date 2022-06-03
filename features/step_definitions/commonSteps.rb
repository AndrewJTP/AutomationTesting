Given('I am located on the homepage of StartApp') do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/'
  end
Given('I click the {string} button') do |nameButton|
    click_on(nameButton)
    sleep 1
end

Given('I press on {string} tab') do |nameTab|
    click_on(nameTab)
    sleep 1
end

When('I fill the email with {string}') do |userEmail|
    fill_in 'email', with: userEmail
end

When('the password with {string}') do |userPassword|
  fill_in 'password', with: userPassword
end

When('press the {string} button') do |nameButton|
  click_on(nameButton)
  sleep 1
end