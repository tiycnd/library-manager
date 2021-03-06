json.book do
  json.id @book.id
  json.url book_url(@book)
  json.title @book.title
  json.authors @book.authors do |author|
    json.id author.id
    json.url author_url(author)
    json.name author.name
  end
  if @book.average_review
    json.average_review @book.average_review
  end
  json.reviews @book.reviews do |review|
    json.stars review.stars
    json.text review.text
    json.user review.user.name
  end
end
