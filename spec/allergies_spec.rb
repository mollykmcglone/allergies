
require("rspec")
require("allergies.rb")

describe('Fixnum#allergies') do
  it('will correctly identify one allergy') do
    expect(1.allergies()).to(eq(["eggs"]))
  end
  it('will correctly identify two allergies') do
    expect(5.allergies()).to(eq(["shellfish", "eggs"]))
  end
  it('will correctly identify three allergies') do
    expect(140.allergies()).to(eq(["cats", "strawberries", "shellfish"]))
  end
  it('will correctly identify four allergies') do
    expect(15.allergies()).to(eq(["strawberries", "shellfish", "peanuts", "eggs"]))
  end
  it('will correctly identify all of the allergies') do
    expect(255.allergies()).to(eq(["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]))
  end
end
