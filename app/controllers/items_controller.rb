class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    flash[:success] = "「#{@item.productname}」を登録しました。"
    redirect_to items_url
  end

  def index
    @items = Item.paginate(page: params[:page])
  end
  
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update!(item_params)
    flash[:success] = "「#{@item.productname}」を編集しました。"
    redirect_to items_url
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "「#{@item}」を削除しました。"
    redirect_to items_url
  end

  private

    def item_params
      params.require(:item).permit(:productname, :order_number,
                                   :product_date, :delivery_date,
                                   :delivery_number, :quantity,
                                   :process, :remarks)
    end
end
