class HelloController < ApplicationController
  def hello
    @time = Time.now
    @say = "hello iam controller"
  end
end
