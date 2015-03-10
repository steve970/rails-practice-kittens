class CategorizationsController < ApplicationController

  before_action do
    @kitten = Kitten.find(params[:kitten_id])
  end

  def new
    @categorization = @kitten.categorizations.new
  end

  def create
    @categorization = @kitten.categorizations.new(categorization_params)
    if @categorization.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def categorization_params
    params.require(:categorization).permit(:kitten_id, :category_id)
  end

end
