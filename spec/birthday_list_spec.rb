require 'birthday_list'

describe BirthdayList do
  it "adds people's birthday" do
    #1 - Setup (create an object)
    birthdaylist  = BirthdayList.new
    #2 - Execute (make my object do something)
    birthdaylist.add("jon", "1/1/1980")
    #3 - Assert (did my object do the correct thing?)
    expect(birthdaylist.list).to include({name: "jon", date: "1/1/1980"})
  end
end
