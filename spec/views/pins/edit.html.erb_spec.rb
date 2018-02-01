require 'rails_helper'

RSpec.describe "pins/edit", type: :view do
  before(:each) do
    @pin = assign(:pin, Pin.create!(
      :url => "MyString"
    ))
  end

  it "renders the edit pin form" do
    render

    assert_select "form[action=?][method=?]", pin_path(@pin), "post" do

      assert_select "input[name=?]", "pin[url]"
    end
  end
end
