require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :company_name => "MyString",
      :address => "MyString",
      :county => "MyString",
      :zip => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :email => "MyString",
      :web => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_company_name[name=?]", "person[company_name]"

      assert_select "input#person_address[name=?]", "person[address]"

      assert_select "input#person_county[name=?]", "person[county]"

      assert_select "input#person_zip[name=?]", "person[zip]"

      assert_select "input#person_phone1[name=?]", "person[phone1]"

      assert_select "input#person_phone2[name=?]", "person[phone2]"

      assert_select "input#person_email[name=?]", "person[email]"

      assert_select "input#person_web[name=?]", "person[web]"
    end
  end
end
