json.review do
  json.id @review.id
  json.stars @review.stars
  json.text @review.text
  json.book do
    json.id @review.book.id
    json.title @review.book.title
  end
end
