class ProfileSerializer < ActiveModel::Serializer
  attributes :user_name, :tweet


  def user_name
    type_check(:user_name, [String])
    object.user_name
  end

  def tweet
    type_check(:tweet, [String])
    object.tweet
  end

  private

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
