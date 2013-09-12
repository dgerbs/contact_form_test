require 'spec_helper'

describe "contact_forms/edit" do
  before(:each) do
    @contact_form = assign(:contact_form, stub_model(ContactForm,
      :name => "MyString",
      :subject => "MyString",
      :email => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit contact_form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_form_path(@contact_form), "post" do
      assert_select "input#contact_form_name[name=?]", "contact_form[name]"
      assert_select "input#contact_form_subject[name=?]", "contact_form[subject]"
      assert_select "input#contact_form_email[name=?]", "contact_form[email]"
      assert_select "textarea#contact_form_message[name=?]", "contact_form[message]"
    end
  end
end
