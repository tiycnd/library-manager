json.book do
  json.id @book.id
  json.url book_url(@book)
  json.title @book.title
  json.authors @book.authors do |author|
    json.id author.id
    json.name author.name
  end
end