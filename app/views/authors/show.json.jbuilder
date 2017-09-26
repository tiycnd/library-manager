json.author do
  json.id @author.id
  json.url author_url(@author)
  json.name @author.name
  json.books @author.books do |book|
    json.id book.id
    json.title book.title
  end
end
