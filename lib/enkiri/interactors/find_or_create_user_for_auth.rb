require 'hanami/interactor'

class FindOrCreateUserForAuth
  include Hanami::Interactor

  expose :user

  def initialize repository: UserRepository.new
    @repository = repository
  end

  def call auth
    @user = @repository.find_by_uid(auth.uid) || @repository.register(auth)
  end
end
