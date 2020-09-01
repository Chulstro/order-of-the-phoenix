require 'rails_helper'

RSpec.describe "When searching as a user" do
  it 'Lets you search by house' do
    visit '/'

    select('Gryffindor', from: :house)

    click_on "Search For Members"

    expect(current_path).to eq('/search')

    expect(page).to have_content("Aberforth Dumbledore")
    expect(page).to have_content("Gryffindor")
    expect(page).to have_content("Owner, Hog's Head Inn")
    expect(page).to have_content("Patronus: goat")
    save_and_open_page
  end
end
