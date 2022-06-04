Given('I click on "Editar Perfil"') do
    find(:xpath, "/html/body/div/div[2]/div[1]/div/div/div/div[2]").click
end
When('I change my data in the form to Edit my profile') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Ocupacion"
          fill_in 'Ocupacion', :with => value
        when "Profesion u oficio"
          fill_in 'carrera', :with => value	 
        when "Ciudad de residencia"
          fill_in 'Ciudad de residencia', :with => value
        when "Genero"
          page.select value, from: 'genero' 
        when "Nombre de contacto de emergencia"
            fill_in 'nombre_contacto_de_emergencia', :with => value
        when "Relación con contacto de emergencia"
            fill_in 'relacion_contacto_de_emergencia', :with => value
        when "Número de contacto de emergencia"
            fill_in 'numero_contacto_de_emergencia', :with => value	  
        when "Mi pequeña descripción"
            fill_in 'descripcion_personal', :with => value	
      end 
    end
  end

When('I erase the career field') do
    fill_in 'carrera', :with => " "	 
end

Then('a message that says {string} appears on screen') do |confirmationMessage|
    expect(page).to have_selector('div', text: confirmationMessage)
end