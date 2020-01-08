feature "enter names" do
  scenario "fill in a form, submitting names, visualizing names" do
    visit '/'
    fill_in :player1, with: "Uno"
    fill_in :player2, with: "Due"
    click_button "Submit"
    expect(page).to have_content "Uno vs. Due"
  end
end