require 'rails_helper'

describe "As a user on the root page" do
  it "I see a dropdown menu of houses, select one and see 7 members" do
    visit root_path

    expect(page).to have_content("Select a House")

    houses = ['Stark', 'Lannister', 'Targaryen', 'Tyrell', 'Greyjoy']

    expect(page).to have_select('house', with_options: houses)

    find('#house').select('Greyjoy')

    click_button 'Get House Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('Balon Greyjoy')
    expect(page).to have_content('38')
  end
end

# As a user
# When I visit "/"
# And I select "Greyjoy" from the dropdown
# And I click on "Get Members"
# Then my path should be "/search" with "house=greyjoy" in the parameters
# And I should see a message "7 Members"
# And I should see a list of the 7 members of House Greyjoy
# And I should see a name and id for each member.
#
#
# Your key is: egg
