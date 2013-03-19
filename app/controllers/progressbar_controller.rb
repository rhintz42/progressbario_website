class ProgressbarController < ApplicationController
  def index
    require 'json'
    @progressbar_obj = {}
=begin
    @progressbar_obj[:messages] = []
    @progressbar_obj[:messages][0] = {}
    @progressbar_obj[:messages][0]['name'] = 'percentComplete';
    @progressbar_obj[:messages][0]['x'] = 10;
    @progressbar_obj[:messages][0]['y'] = 10;
    @progressbar_obj[:messages][0]['title'] = 'Percent Complete';
    @progressbar_obj[:messages][0]['initialText'] = 'percentComplete';
    @progressbar_obj[:messages][0]['fontSize'] = 30;
    @progressbar_obj[:messages][0]['fontFamily'] = 'Calibri';
    @progressbar_obj[:messages][0]['fontColor'] = 'green';
=end
    @progressbar_obj_json = @progressbar_obj.to_json
  end

  def update
    require 'json'

    @progressbar_obj_json = params[:progressbar_obj_json] || {}.to_json
    
    respond_to do |format|
      format.js
    end
  end
end
