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
		click_link 'New Contact form'
		fill_in 'Name', with: 'Doug Gerber'
		fill_in 'Subject', with: 'Hey'
		fill_in 'Email', with: 'doug@example.com'
		fill_in 'Message', with: "What's going on this weekend?"
		click_link 'Create Contact form'
	end
end
