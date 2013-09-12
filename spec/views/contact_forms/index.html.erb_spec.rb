require 'spec_helper'

describe "contact_forms/index" do
  before(:each) do
    assign(:contact_forms, [
      stub_model(ContactForm,
        :name => "Name",
        :subject => "Subject",
        :email => "Email",
        :message => "MyText"
      ),
      stub_model(ContactForm,
        :name => "Name",
        :subject => "Subject",
        :email => "Email",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of contact_forms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
