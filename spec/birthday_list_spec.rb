require 'birthday_list'

describe BirthdayList do
  describe "#add" do
    it "adds people's birthday" do
      #1 - Setup (create an object)
      birthdaylist  = BirthdayList.new
      #2 - Execute (make my object do something)
      birthdaylist.add("jon", "1/2/1980")
      #3 - Assert (did my object do the correct thing?)
      expect(birthdaylist.list).to include({name: "jon", date: "1/2/1980"})
    end
  end

  describe "#display" do
    it "displays names and birthday in a user friendly format" do
      #1 - Setup (create an object)

      #2 - Execute (make my object do something)
      subject.add("antonio", "6/5/1983")
      #3 - Assert (did my object do the correct thing?)
      expect{ subject.display }.to output("antonio 6/5/1983\n").to_stdout
    end
    it  "displays multiple names" do
      subject.add("andres", "9/9/1990")
      subject.add("antonio", "7/4/1990")
      expect{ subject.display }.to output("andres 9/9/1990\nantonio 7/4/1990\n").to_stdout
    end
  end

  describe "#process_date" do
    it 'converts a string date into a Date object' do
      expect( subject.process_date("1/2/1980") ).to eq(Date.new(1980, 2, 1))
    end
  end
end
