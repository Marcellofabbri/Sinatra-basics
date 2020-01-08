feature "enter names" do
  scenario "fill in a form, submitting names, visualizing names" do
    sign_in_and_play
    expect(page).to have_content "Player 1 vs. Player 2"
  end
end