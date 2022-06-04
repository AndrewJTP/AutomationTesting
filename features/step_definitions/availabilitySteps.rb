  Given('the label says {string}') do |labelMessage|
    sleep 2
    @availabilityMessage=false
    if find(:xpath, "/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]").text() == labelMessage
        @availabilityMessage=true
    end
  end     

  When('I press the message') do
    puts @availabilityMessage
    if @availabilityMessage
        find(:xpath, "/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]").click()
    sleep 2
    end
  end
  
  Then('I should see the {string}') do |labelMessage|
    expect(find(:xpath, "/html/body/div/div[2]/div[1]/div/div/div/div[1]/div[2]/div[2]/div[2]/label/span[2]").text()).to eq(labelMessage)
  end