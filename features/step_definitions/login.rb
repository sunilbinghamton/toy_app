Given(/^the following signup details exist in database:$/) do |table|
  table.hashes.each do |user|
    testuser = User.create!(user)
    p testuser
    p user
  end
end