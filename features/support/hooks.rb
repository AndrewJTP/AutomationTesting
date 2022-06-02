After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before '@prueba' do
  iniciarSesion
end

After '@deleteProject' do 
    deleteAnProject
end

def loginCoreteam
  visit 'https://testing-start.web.app/'
  click_on('Iniciar Sesión')
  fill_in 'email', with: 'coreteam@gmail.com'
  fill_in 'password', with: '123456'
  click_on('Iniciar Sesión')
end

def deleteAnProject
  click_on('Proyectos')
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[4]/div/div/a/button/div').click
  nameProject='[name=detalle' + 'papaneitor' + ']'
  find(nameProject).click
  click_on('Unirme')
  click_on('eliminarproyecto')
  click_on('eliminarproyecto1')
end