feature "attack" do
  scenario "attacks player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Attack was very effective"
  end
end