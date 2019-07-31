json.extract! image_file, :id, :owner, :description, :created_at, :updated_at
json.url image_file_url(image_file, format: :json)
