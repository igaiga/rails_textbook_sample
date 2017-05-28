class HelloController < ApplicationController
  def index
    @time = Time.current
  end
end
