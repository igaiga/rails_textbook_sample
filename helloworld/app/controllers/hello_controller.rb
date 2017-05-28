class HelloController < ApplicationController
  def index
    @time = Time.current.in_time_zone('Tokyo')
  end
end
