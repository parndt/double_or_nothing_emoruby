require "spec_helper"
require "date"
require "double_or_nothing"

RSpec.describe DoubleOrNothing do
  context DoubleOrNothing::Calculator do
    context "as documented in the README"
    let(:alice) { double(birthday: Date.parse("2000-01-01"))  }
    let(:bob)   { double(birthday: Date.parse("1985-01-01"))  }
    subject     { DoubleOrNothing::Calculator.new(alice, bob) }

    it "calculates the correct date" do
      expect(subject.call).to eq(Date.parse("2014-12-31"))
    end

    it "shows difference" do
      expect(subject.difference).to eq(Rational(5478, 1))
    end
  end

  context DoubleOrNothing::Person do
    subject { DoubleOrNothing::Person.new("2000-01-01") }

    it "has a birthday" do
      expect(subject.birthday).to eq(Date.parse("2000-01-01"))
    end
  end
end
