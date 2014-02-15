class AngularTemplatesController < ApplicationController
  def show
    render :partial => params.require(:id)
  end
end