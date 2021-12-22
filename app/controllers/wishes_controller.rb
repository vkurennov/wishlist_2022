class WishesController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @wish = @list.wishes.new(wish_params)

    if @list.save
      redirect_to list_path(@list), notice: "Wish was successfully added."
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  def destroy
    @wish = Wish.find(params[:id])

    @wish.destroy

    redirect_to @wish.list
  end


  private

  def wish_params
    params.require(:wish).permit(:title, :description)
  end
end
