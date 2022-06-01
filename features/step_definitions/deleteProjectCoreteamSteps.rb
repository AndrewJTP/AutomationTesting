numberOfProjectsBeforeDelete = 0
When('I click on the {string} red button') do |nameButton|
  numberOfProjectsBeforeDelete = page.all(:xpath, '//*[@id="root"]/div/div[2]/div').length
  click_on('eliminarproyecto')
  numberOfProjectsBeforeDelete = numberOfProjectsBeforeDelete - 1
  sleep 3
end

When('confirm delete pressing {string}') do |nameButton|
  click_on('eliminarproyecto1')
  sleep 3
end

Then('the number of projects should be reduced by 1') do
  numberOfProjectsAfterDelete = page.all(:xpath, '//*[@id="root"]/div/div[2]/div').length

  if numberOfProjectsBeforeDelete != numberOfProjectsAfterDelete
        raise "The number of projects should be "+ numberOfProjectsBeforeDelete  
  end
  sleep 3
end