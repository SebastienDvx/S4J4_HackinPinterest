require 'rails_helper'

RSpec.describe "pins/show", type: :view do
  before(:each) do
    @pin = assign(:pin, Pin.create!(
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
  end
end
