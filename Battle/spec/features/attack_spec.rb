feature "attack" do
  scenario "player 1attacks player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player 1 attacked Player 2"
  end

<<<<<<< Updated upstream
  scenario "points are deducted from player 2" do
    sign_in_and_play
    click_button('Attack')
    click_link('return')
    expect(page).not_to have_content "Player 1 HP: 100"
    expect(page).to have_content "Player 1 HP: 90"
  end

=======
  scenario "player 2 attacks player 1" do
    sign_in_and_play
    click_button('Attack')
    click_button("Opponent's move")
    expect(page).to have_content("Player 2 attacked Player 1")
  end
>>>>>>> Stashed changes
end