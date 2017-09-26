json.authors @authors do |author|
  json.id author.id
  json.url author_url(author)
  json.name author.name
  json.books author.books do |book|
    json.id book.id
    json.url book_url(book)
    json.title book.title
  end
end
