feature "Name form" do
  scenario "2 players can enter their names and see them on the screen" do
    visit ("/")
    fill_in :player_1, with: "John"
    fill_in :player_2, with: "Leo"
    click_button "Submit"
    save_and_open_page
    expect(page).to have_content "John vs. Leo"
  end
end
#feature "Testing infrastructure" do
#scenario "Can run app and check page content" do
# visit("/")
# expect(page).to have_content "Testing infrastructure working!"
#end
