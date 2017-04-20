require 'rails_helper'
feature "index view page" do
    scenario "someone visits home page" do
        visit root_path
        expect(page).to have_content "The Simpsons"
    end
    scenario "someone clicks new character link" do
        visit root_path
        expect(page).to have_content "New Simpsons Character"
    end
end
