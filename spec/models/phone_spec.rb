require 'rails_helper'

describe Phone do
  it "expect validate_presence_of :number" do
    phone = Phone.new({:number => '' })
    expect(phone.save).to eq false
  end

  it "expect belong_to :contact" do
    a_phone = Phone.new({:number => '12312'})
    a_contact = Contact.new(:name => "bob")
    a_contact.phone() << a_phone
    expect(a_phone.contact()).to be eq a_contact
  end

end
