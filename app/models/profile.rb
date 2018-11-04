class Profile
  include ActiveModel::Model
  include ActiveModelAttributes

  attribute :user_name, :string
  attribute :tweet, :string
end
