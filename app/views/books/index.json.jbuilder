json.books @books do |book|
  json.id book.id
  json.url book_url(book)
  json.title book.title
  json.authors book.authors do |author|
    json.id author.id
    json.url author_url(author)
    json.name author.name
  end
  json.review_count book.reviews.count
  if book.average_review
    json.average_review book.average_review
  end
end
