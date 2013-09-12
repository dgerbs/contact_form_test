require 'spec_helper'

describe "contact_forms/show" do
  before(:each) do
    @contact_form = assign(:contact_form, stub_model(ContactForm,
      :name => "Name",
      :subject => "Subject",
      :email => "Email",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Subject/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
  end
end
