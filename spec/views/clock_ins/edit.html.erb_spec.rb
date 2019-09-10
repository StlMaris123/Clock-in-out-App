require 'rails_helper'

RSpec.describe "clock_ins/edit", type: :view do
  before(:each) do
    teacher = Teacher.create(email: "teacher@test.com", password: "test123")
    @clock_in = assign(:clock_in, ClockIn.create!(
      :teacher => teacher,
      :clock_type => 1
    ))
  end

  it "renders the edit clock_in form" do
    render

    assert_select "form[action=?][method=?]", clock_in_path(@clock_in), "post" do

      assert_select "input[name=?]", "clock_in[teacher_id]"

      assert_select "input[name=?]", "clock_in[clock_type]"
    end
  end
end
