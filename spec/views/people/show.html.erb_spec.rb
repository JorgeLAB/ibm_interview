require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/County/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Phone1/)
    expect(rendered).to match(/Phone2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Web/)
  end
end
