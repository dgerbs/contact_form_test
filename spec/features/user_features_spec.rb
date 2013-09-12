require 'spec_helper'

feature "Contact Form", %q{
# As a site visitor
# I want to contact DogHub staff
# So that I can tell them how awesome they are
} do

# Acceptance Criteria:

# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name
	
	it "should have a contact form" do
		visit '/contact_forms'
		expect(page).to have_content("Contact Form")
	end

	it "should specify validated info" do
		visit '/contact_forms'
		fill_in 'email', with: 'doug@example.com'
		fill_in 'subject', with: 'Hey'
		fill_in 'description', with: 'What\'s going on this weekend?'
		fill_in 'name', with: 'Doug Gerber'
		click_link 'Submit Email'
	end
end
