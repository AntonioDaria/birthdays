require 'pry'
require 'date'

class BirthdayList
  attr_reader :list

  def initialize
    @list = []
  end

  def process_date(date)
    day,month,year = date.split("/")
    day = day.to_i
    month = month.to_i
    year = year.to_i
    Date.new(year,month,day)
  end

  def current_date
    Date.today
  end

  def add(name, date)
    date = process_date(date)
    @list << ({name: name, date: date})
  end

  def display
    @list.each do |b_hash|
      output = "#{b_hash[:name]} #{b_hash[:date].day}/#{b_hash[:date].month}/#{b_hash[:date].year}"
      puts output
    end
  end

  def correct_hash
    no_year = []
    @list.each do |b_hash|
      no_year << {name: b_hash[:name], day: b_hash[:date].day, month: b_hash[:date].month}
    end
    return no_year
  end

  #def birthday?
   # birthday_array = []
    #@list.each do |name, date|
     # birthday_array << { :name name, :day date.day, :month date.month }
    #end
    
    #current_date = 
  #end

end
