feature "view hitpoints" do
  scenario "Player 2's hit points are displayed" do
    visit ("/")
    fill_in :player_1, with: "John"
    fill_in :player_2, with: "Leo"
    click_button "Submit"
    save_and_open_page
    expect(page).to have_content "Leo 45 HP"
  end
end
