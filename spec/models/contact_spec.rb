require 'rails_helper'

describe Contact do
  it "will validate the presence of a name" do
    contact_name = Contact.new({:name => '' })
    expect(contact_name.save).to eq false
  end

  describe Contact do
    it { expect have_many :phones }
  end

end
