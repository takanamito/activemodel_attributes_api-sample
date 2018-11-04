class Profile
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :user, :string, default: -> { raise 'This attribute must not be nil.' }
  attribute :tweet

  validates :user, presence: true
end
