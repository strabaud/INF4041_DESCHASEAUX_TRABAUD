json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :description, :note, :cover, :nbreader
  json.url book_url(book, format: :json)
end
