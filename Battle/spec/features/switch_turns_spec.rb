feature 'Switch turns' do
  context "seeing current turn" do
  scenario "at the beginning of the game" do
    sign_in_and_play
    expect(page).to have_content("Player 1's turn")
  end

  scenario "after Player 1 attacks" do
    sign_in_and_play
    click_button('Attack')
    click_button("Opponent's move")
    expect(page).not_to have_content("Player 1's turn")
    expect(page).to have_content("Player 2's turn")
  end
end
end
    