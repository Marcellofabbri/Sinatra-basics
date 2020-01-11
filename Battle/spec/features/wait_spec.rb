feature "wait" do
  scenario "after attacking, go to a page were the opponent can attack" do
    sign_in_and_play
    click_button('Attack')
    click_button("Opponent's move")
    expect(page).not_to have_content('Attack')
  end

end