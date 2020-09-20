require "rails_helper"

RSpec.describe "List Trainers" do
    it "displays the name and the age from the trainers saved" do
        trainer = Trainer.create(name: "Scott", age:27)
        trainer1 = Trainer.create(name: "Paul", age:22)

        visit "/"

        expect(page).to have_text("Scott")
        expect(page).to have_text("Paul")
        expect(page).to have_integer(27)
        expect(page).to have_integer(22)

        expect(page).to have_link("New Trainer")
    end
end