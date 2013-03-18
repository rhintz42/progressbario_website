class ProgressbarController < ApplicationController
  def index
    require 'json'
    @progressbar_obj = {}
    @progressbar_obj_json = @progressbar_obj.to_json
  end

  def update
    require 'json'
    @progressbar_obj = params[:progressbar_obj_json] || {}
    @progressbar_obj_json = @progressbar_obj.to_json
    
    respond_to do |format|
      format.js
    end
  end
end
