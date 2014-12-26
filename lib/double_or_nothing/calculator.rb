module DoubleOrNothing
  class Calculator
    def initialize(person_one, person_two)
      @elder, @younger = [person_one.birthday, person_two.birthday].sort
    end

    def difference
      younger - elder
    end

    def call
      younger + difference
    end

    private
    attr_reader :elder, :younger
  end
end
