require 'rails_helper'

RSpec.describe "clock_ins/show", type: :view do
  before(:each) do
    teacher = Teacher.create(email: "teacher@test.com", password: "test123")
    @clock_in = assign(:clock_in, ClockIn.create!(
      :teacher => teacher,
      :clock_type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
