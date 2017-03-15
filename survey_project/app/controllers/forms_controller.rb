class FormsController < ApplicationController
@@session = 1
  def index
  end
  def result
    # @session = 1
    flash[:msg] = "Thanks for submitting this form! You have submitted this form #{@@session} time!"
    @@session += 1
    @name = params[:name]
    @djl = params[:select]
    @fl = params[:select2]
    @text = params[:text]


  end
end
