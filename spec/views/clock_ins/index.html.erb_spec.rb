require 'rails_helper'

RSpec.describe "clock_ins/index", type: :view do
  before(:each) do
    teacher = Teacher.create(email: "teacher@test.com", password: "test123")
    assign(:clock_ins, [
      ClockIn.create!(
        :teacher => teacher,
        :clock_type => 1
      ),
      ClockIn.create!(
        :teacher => teacher,
        :clock_type => 1
      )
    ])
  end

  it "renders a list of clock_ins" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    
  end
end
