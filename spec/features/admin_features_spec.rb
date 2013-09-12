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

	feature "Contact Form", %q{
		As an admin
		I want to delete an inquiry
		So that I can remove spam or other undesirable inquiries
	} do

# Acceptance Criteria:
# I can remove an item from the listing of contact inquiries

	it "should delete messages" do
		field = FactoryGirl.create(:contact_form)
		initial_count = ContactForm.count
		visit '/contact_forms'
		click_link 'Destroy'
		expect(page).not_to have_content(field.name)
		expect(page).not_to have_content(field.subject)
		expect(page).not_to have_content(field.email)
		expect(page).not_to have_content(field.message)
		expect(ContactForm.count).to eql(initial_count - 1)
	end
end
