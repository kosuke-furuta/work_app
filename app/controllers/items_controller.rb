class ItemsController < ApplicationController

  def show
    @item = item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = items.new(item_params)
    if @item.save
      flash[:success] = "「#{@item.productname}」を登録しました。"
      # redirect_to items_url
      redirect_to @item
    else
      render 'item/new'
    end
  end

  def index
    @items = current_user.items.paginate(page: params[:page])
  end
  
  def edit
    @item = Item.find(params[:id])
    # @item = current_user.items.find(params[:id])
  end

  def update
    @item.update!(item_params)
    flash[:success] = "「#{@item.productname}」を編集しました。"
    redirect_to items_url
  end

  def destroy
    @item = Item.find(params[:id])
    item.destroy
    flash[:success] = "「#{@item}」を削除しました。"
    redirect_to items_url
  end

    # item = Item.find(params[:id])
    # if item.item_id == current_user.id
    # item.destroy
    # end
    # Item.current_user.items.find(params[:id]).destroy
    
  private

    def item_params
      params.require(:item).permit(:productname, :order_number,
                                   :product_date, :delivery_date,
                                   :delivery_number, :quantity,
                                   :process, :remarks)
    end
end
