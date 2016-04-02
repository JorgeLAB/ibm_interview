require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :company_name => "Company Name",
        :address => "Address",
        :county => "County",
        :zip => "Zip",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email => "Email",
        :web => "Web"
      ),
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :company_name => "Company Name",
        :address => "Address",
        :county => "County",
        :zip => "Zip",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email => "Email",
        :web => "Web"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Web".to_s, :count => 2
  end
end
