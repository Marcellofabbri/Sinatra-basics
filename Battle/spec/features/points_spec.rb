feature "view points" do
  scenario "see opponent's hit points" do
    sign_in_and_play
    expect(page).to have_content "Player 1 HP: 100"
    expect(page).to have_content "Player 2 HP: 100"
  end
end