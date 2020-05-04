require 'spec_helper'

feature '/outcome' do  

  scenario "player picks rock" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("You have selected Rock")
  end 

  scenario "player picks rock" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content("You have selected Paper")
  end 

  scenario "player picks rock" do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content("You have selected Scissors")
  end 

  scenario "Play again button" do 
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_button("Play Again")
  end

  scenario "Draw" do 
    sign_in_and_play
    click_button("Scissors")

    testing = Rps.new
    @result = testing.calculate_result("Scissors", "Scissors")
    @comp_move = testing.compmove

    expect(page).to have_content("Draw")
  end 


end 


    


#controller.session.stub(:[]).with(:user_id).and_return(<whatever user ID>)
    