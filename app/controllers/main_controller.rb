class MainController < ApplicationController

  def index
    redirect_to(controller:'books', action: 'index')
  end

  def about
    @created_by = "Kevin"
    @id = params['id']
    @page = params[:page]
    # render('about')
  end

  def hello
    redirect_to(controller:'books', action: 'index')
  end

end
