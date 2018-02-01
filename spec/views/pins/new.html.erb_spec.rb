require 'rails_helper'

RSpec.describe "pins/new", type: :view do
  before(:each) do
    assign(:pin, Pin.new(
      :url => "MyString"
    ))
  end

  it "renders new pin form" do
    render

    assert_select "form[action=?][method=?]", pins_path, "post" do

      assert_select "input[name=?]", "pin[url]"
    end
  end
end
