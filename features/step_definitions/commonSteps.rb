Given('I am located on the homepage of StartApp') do
    page.driver.browser.manage.window.maximize
    visit 'https://testing-start.web.app/'
  end
Given('I click the {string} button') do |string|
    click_on(string)
    sleep 1
end

When('I fill the email with {string}') do |string|
    fill_in 'email', with: string
end