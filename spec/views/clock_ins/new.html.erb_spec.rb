require 'rails_helper'

RSpec.describe "clock_ins/new", type: :view do
  before(:each) do
    teacher = Teacher.create(email: "teacher@test.com", password: "test123")
    assign(:clock_in, ClockIn.new(
      :teacher => teacher,
      :clock_type => 1
    ))
  end

  it "renders new clock_in form" do
    render

    assert_select "form[action=?][method=?]", clock_ins_path, "post" do

      assert_select "input[name=?]", "clock_in[teacher_id]"

      assert_select "input[name=?]", "clock_in[clock_type]"
    end
  end
end
