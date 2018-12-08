class ToppagesController < ApplicationController
  def index
    if logged_in?
      # @taskが空→TasksControllerのcreate、@taskに単一のデータ→updateにaction先が行く
      @task = current_user.tasks.build
      @tasks = current_user.tasks.order('created_at DESC').page(params[:page])
    end
  end
end