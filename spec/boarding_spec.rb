require_relative "../booking_detail"
describe "Pet" do
    context "#Run puts the dogs name" do
      before do
        new_pet = Pet.new
        new_pet.run
      end

      it "should have the dog  name input before going to the next booking step" do
        new_pet.run
        expect(dog name.exist?).to be false
      end
    end
end