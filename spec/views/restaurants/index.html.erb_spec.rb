require 'rails_helper'

RSpec.describe "restaurants/index.html.erb" do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create(name: "Carluccios", description: "Italian"),
      Restaurant.create(name: "Cafe Rouge", description: "French cuisine")
      ])
  end

  it 'displays all the restaurants' do
    render
    expect(rendered).to match "Carluccios"
    expect(rendered).to match "Italian"
    expect(rendered).to match "Cafe Rouge"
    expect(rendered).to match "French cuisine"
  end

end
