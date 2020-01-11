feature "losing the game" do
  scenario "a losing message appears when a player reaches 0 HP" do
    sign_in_and_play
    9.times { attack_and_attacked }
    click_button("Attack")
    expect(page).to have_content("Player 2 lost")
  end

  scenario "the game ends and redirects to the beginning" do
    sign_in_and_play
    9.times { attack_and_attacked }
    click_button("Attack")
    click_button("Start over")
    expect(page).to have_content('Sign in to play')
  end
end
