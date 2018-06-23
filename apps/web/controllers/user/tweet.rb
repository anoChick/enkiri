module Web::Controllers::User
  class Tweet
    include Web::Action

    def call(params)
      result = PostTweet.new(user: current_user)
        .call(params[:tweet][:message])
      if result.success?
        flash[:success] = "ツイートしました."
      else
        flash[:error] = "なんか失敗した"
      end
      redirect_to routes.root_path
    end
  end
end
