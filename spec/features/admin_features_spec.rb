require 'spec_helper'

feature "Contact Form", %q{
As an admin
I want to review contact inquiries
So that I can respond or take action
} do

# Acceptance Criteria:
# I can see a list of all contact inquiries

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
	# click_link 'Create Contact form'
	end
end
