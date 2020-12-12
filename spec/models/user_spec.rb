require 'rails_helper'

RSpec.describe User, type: :model do
  # 姓、名、メール、パスワードが有効状態
  it "is vaild with a first name, last name,email, and password" do
    user = User.new(
      name: "test kosuke",
      email: "test@example.com",
      password: "password",
    )
    expect(user).to be_valid
  end

  # 名がなければ無効な状態
  it "is invalid without a name" do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
  # 性がなければ無効な状態
  # it "is invalid without a last name"
  # メールアドレスがなければ無効な状態であること
  it "is invalid without an email address"
    
  # 重複したメールアドレスなら無効な状態であること
  it "is invalid without a duplicate emai address" do
    User.create(
      name: "test kosuke",
      # last_name "",
      email: "test@example.com",
      password: "password",
    )
    user = User.new(
      name: "test kosuke",
      # last_name "",
      email: "test@example.com",
      password: "password",
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
  # ユーザーのフルネームを文字列として返すこと
  it "returns a user's full name as a string"
end