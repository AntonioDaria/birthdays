require 'pry'
class BirthdayList
  attr_reader :list

  def initialize
    @list = []
  end

  def add(name, date)
    @list << ({name: name, date: date})
  end

  def display
    @list.each do |b_hash|
      output = "#{b_hash[:name]} #{b_hash[:date]}"
      puts output
    end
  end
end
binding.pry
