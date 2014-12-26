require 'date'

module DoubleOrNothing
  class Person
    attr_reader :birthday

    def initialize(birthday)
      birthday = Date.parse(birthday) unless birthday.is_a?(Date)
      @birthday = birthday
    end
  end
end
