require 'rails_helper'

RSpec.describe "pins/index", type: :view do
  before(:each) do
    assign(:pins, [
      Pin.create!(
        :url => "Url"
      ),
      Pin.create!(
        :url => "Url"
      )
    ])
  end

  it "renders a list of pins" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
