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
end