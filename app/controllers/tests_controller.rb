class TestsController < ApplicationController
  def index
    render html: '<h1>list of tests</h1>'.html_safe
  end

  def show
    render plain: params.inspect
  end
end
