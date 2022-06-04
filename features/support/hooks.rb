After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before '@prueba' do
  iniciarSesion
end

def iniciarSesion
  page.driver.browser.manage.window.maximize
  visit 'https://testing-start.web.app/login'
  fill_in 'email', with: userEmail
  fill_in 'password', with: userPassword
  click_on('Iniciar Sesion')
end