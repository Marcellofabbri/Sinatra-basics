def sign_in_and_play
    visit '/'
    fill_in :player1, with: "Player 1"
    fill_in :player2, with: "Player 2"
    click_button "Submit"
end

def attack_and_attacked
    click_button('Attack')
    click_button("Opponent's move")
    click_button('Your turn')
end











