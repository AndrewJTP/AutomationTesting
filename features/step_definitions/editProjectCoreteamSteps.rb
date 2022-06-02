Then('I click on the card called {string}') do |nameCard|
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div[7]/div/div/a/button/div').click
  sleep 1
end

Then('click in the botton edit of project card {string}') do |nameProjectCard|
  find(:xpath, '//*[@id="root"]/div[2]/div[1]/div/div[2]/div/div/div[2]/div[2]/button').click
  sleep 1
end