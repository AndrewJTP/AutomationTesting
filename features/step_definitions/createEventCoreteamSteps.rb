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

When('I click on event {string} button') do |nameButton|
    click_on(nameButton)
    sleep 5
end
Then('I click in the event card {string}') do |nameOfEvent|
    nameOfEvent='[name=Detalles_' + nameOfEvent + ']'
    find(nameOfEvent).click
    sleep 3
end

Then('I should see my event on the list of events with the following information') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "nombre_evento"
          expect(page).to have_selector('h4', text: value)
        when "descripcion_evento"
          expect(page).to have_selector('p', text: value)
        when "lugar_evento"
          expect(page).to have_selector('p', text: value)
      end 
    end
    sleep 6
end