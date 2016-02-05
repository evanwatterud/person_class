require "pry"

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name = nil, middle_name = nil)
    if last_name.nil? && middle_name.nil?
      name = first_name.split(" ")
      @first_name = name.shift
      @middle_name = name.shift
      @last_name = name.shift
    elsif last_name.nil?
      name = first_name.split(" ")
      @first_name = name.shift
      @last_name = name.join(" ")
    else
      @first_name = first_name
      @last_name = last_name
      @middle_name = middle_name
    end
  end
end
