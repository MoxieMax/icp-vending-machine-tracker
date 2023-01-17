require 'rails_helper'

RSpec.describe 'Machine show page', type: :feature do
  describe 'user story 1' do
    before :each do
      @owner1 = Owner.create!(name: "Pepe Silvia")
      
      @machine1 = Machine.create!(location: "Paddy's Pub", owner_id: @owner1.id)
      
      @snack1 = Snack.create!(name: "Jelly Beans", price: 1, machine_id: @machine1.id)
      @snack2 = Snack.create!(name: "Fight Milk" , price: 3.5, machine_id: @machine1.id)
      @snack3 = Snack.create!(name: "Hot Cheetos", price: 2.5, machine_id: @machine1.id)
    end
    describe 'as a visitor when I visit a vending machine show page' do
      it '' do
        # # As a visitor
        # # When I visit a vending machine show page
        visit machine_path(@machine1)
        # save_and_open_page
        
        # # I see the name of all of the snacks associated with that vending machine along with their price
        expect(page).to have_content(@snack1.name)
        expect(page).to have_content(@snack2.name)
        expect(page).to have_content(@snack3.name)
        
        expect(page).to have_content(@snack1.price)
        expect(page).to have_content(@snack2.price)
        expect(page).to have_content(@snack3.price)
      end
    end
  end
end
