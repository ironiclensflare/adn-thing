class GlobalController < ApplicationController
  def index
    @stream = ADN::API::Post.global_stream['data']
  end
end
