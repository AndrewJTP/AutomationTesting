When('I click on {string} button') do |string|
    click_on(string)
end
    
When('I fill the next events fields with the following') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "fecha_evento"
            fill_in 'fecha_evento', :with => value  
        when "nombre_evento"
            fill_in 'nombre_evento', :with => value	 
        when "descripcion_evento"
            fill_in 'descripcion_evento', :with => value
        when "lugar_evento"
            fill_in 'lugar_evento', :with => value	 	  
        end 
    end
end

When('I click on event {string} button i should see the event name {string}') do |nameButton,eventName|
    click_on(nameButton)
    sleep 1
    expect(page).to have_selector('MuiCardHeader-content', text: eventName)
end