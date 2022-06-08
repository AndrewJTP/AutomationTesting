When('I click on {string} button') do |string|
  click_on(string)
end
  
When('I fill the next fields with the following') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
      when "fecha_inicio"
        fill_in 'fecha_inicio', :with => value  
      when "fecha_fin"
        fill_in 'fecha_fin', :with => value
      when "titulo"
        fill_in 'titulo', :with => value	 
      when "descripcion"
        fill_in 'descripcion', :with => value
      when "objetivo"
        fill_in 'objetivo', :with => value	 	  
    end 
  end
  sleep 1
end

When('I click on the scroll {string}') do |scrollField|
  find(:xpath, '/html/body/div[2]/div[3]/form/div[2]/div[7]/div/div/div/div').click
  find(:xpath, '//*[@id="menu-"]/div[3]/ul/li[4]').click
end

Then('I see the card {string} and click on it') do |nameCard|
  sleep 3
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[4]/div/div/a/button/div').click
end

Then('click in the project card {string}') do |nameOfProject|
  nameProject='[name=detalle' + nameOfProject + ']'
  find(nameProject).click
  sleep 3
end

Then('I should see my project on the list of projects with the following information') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
      when "titulo"
        expect(page).to have_selector('h1', text: value)
      when "descripcion"
        expect(page).to have_selector('p', text: value)
      when "objetivo"
        expect(page).to have_selector('p', text: value)
    end 
  end
  sleep 6
end