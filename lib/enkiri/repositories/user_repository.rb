require 'pry'
class UserRepository < Hanami::Repository
  def find_by_uid(uid)
    users.where(uid: uid).one
  end

  def register(auth)
    create(
      uid:        auth.uid,
      name:       auth.info.nickname,
      image_url: auth.info.image,
      access_token: auth.credentials.token,
      access_token_secret: auth.credentials.secret
    )
  end
end
