require 'spec_helper'

feature "Contact Form", %q{
As an admin
I want to review contact inquiries
So that I can respond or take action
} do

# Acceptance Criteria:
# I can see a list of all contact inquiries

	it "should list messages for review" do
		field = FactoryGirl.create(:contact_form)
		visit '/contact_forms'
		expect(page).to have_content(field.name)
		expect(page).to have_content(field.subject)
		expect(page).to have_content(field.email)
		expect(page).to have_content(field.message)
	end
end
