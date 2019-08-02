require 'rails_helper'

RSpec.describe ImageFile, type: :model do
  it 'is valid with valid attributes' do
    image_file = ImageFile.new(owner: 'Person', description: 'Text')
    image_file.image.attach(io: File.open(Rails.root.join('spec', 'files', 'lock.png')),
      filename: 'lock.png', content_type: 'image/png')
    expect(image_file).to be_valid
  end

  it 'is not valid without owner' do
    image_file = ImageFile.new(owner: nil, description: 'Description')
    expect(image_file).to_not be_valid
  end

  it 'is not valid without description' do
    image_file = ImageFile.new(owner: 'Owner', description: nil)
    expect(image_file).to_not be_valid
  end

  it 'is not valid without image file' do
    image_file = ImageFile.new(owner: 'Owner', description: 'Description')
    expect(image_file).to_not be_valid
  end
end
