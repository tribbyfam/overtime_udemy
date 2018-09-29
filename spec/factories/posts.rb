FactoryBot.define do
  factory :post do
    date Date.today
    rationale "some rationale"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "some more rationale"
    user
  end
end
# @user = FactoryGirl.create(:user)
# @post = create(:post, user: @user)