class Random::GnaController < ApplicationController
  def index
  end

  def generate_form
  	@gna = Gna.new
  end

  def generate
  	@gna = Gna.new(params[:gna])
  	@randoms_array = @gna.random_numbers
  	respond_to do |format|
  		format.html { redirect_to("/random/gna/generate_form", :notice => 'Post created.') }  
      format.js 
    end
	end

end
