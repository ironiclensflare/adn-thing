class GlobalController < ApplicationController
  def index
    @posts = ADN::API::Post.global_stream['data']
  end
end
