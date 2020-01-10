feature "attack" do
  scenario "attacks player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player 1 attacked Player 2"
  end

  scenario "points are deducted from player 2" do
    sign_in_and_play
    click_button('Attack')
    click_link('return')
    expect(page).not_to have_content "Player 1 HP: 100"
    expect(page).to have_content "Player 1 HP: 90"
  end

end