require 'rails_helper'

RSpec.describe ImageFile, type: :model do
  it 'is valid with valid attributes' do
    image_file = ImageFile.new(owner: 'Person', description: 'Text')
    expect(image_file).to be_valid
  end

  it 'is not valid without owner' do
    image_file = ImageFile.new(owner: nil)
    expect(image_file).to_not be_valid
  end

  it 'is not valid without description' do
    image_file = ImageFile.new(description: nil)
    expect(image_file).to_not be_valid
  end
end
