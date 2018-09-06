require 'birthday_list'

describe BirthdayList do
  it "adds people's birthday" do
    #1
    birthdaylist  = BirthdayList.new
    #2
    birthdaylist.add("jon", "1/1/1980")
    #3
    expect(birthdaylist.list).to include([{name: "jon", date: "1/1/1980"}])
  end
end
