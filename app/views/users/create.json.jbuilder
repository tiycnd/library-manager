json.user do
  json.id @user.id
  json.email @user.email
  json.name @user.name
end
# json.(@user, :id, :email, :name)
