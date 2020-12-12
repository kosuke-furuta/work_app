require 'rails_helper'

RSpec.describe Item, type: :model do
  # ユーザー単位で重複したプロジェクト名を許可しない事
  it "does not allow duplicate item names per user" do
    user = User.create(
      name: "test kosuke",
      # last_name: "",
      email: "test@example.com",
      password: "password",
    )

    user.items.create(
      product_name: "テスト品",
    )

    new_item = user.items.build(
      product_name: "テスト品",
    )

    new_item.valid?
    expect(new_item.errors[:product_name]).to include("has already been taen")
  end

  # 二人のユーザーが同じ名前を使うことは許可する事
  it "allows two users to share a item name" do
    user = User.create(
      name: "test kosuke",
      # last_name: "",
      email: "test@example.com",
      password: "password",
    )

    user.items.create(
      product_name: "テスト品",
    )

    other_user = User.create(
      name: "test kosuke",
      # last_name: "",
      email: "test@example.com",
      password: "password",
    )

    other_item = other_user.items.build(
      product_name: "テスト品"
    )

    expect(other_item).to be_valid
  end
end
