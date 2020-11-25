class ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "製品登録完了！"
      # 保存をここで扱う
      redirect_to @item
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      # 更新に成功した場合を扱う
      flash[:success] = "製品編集完了！"
      redirect_to @item
    else
      render 'edit'
    end
  end

  private

    def item_params
      params.require(:item).permit(:productname, :order_number,
                                   :product_date, :delivery_date,
                                   :delivery_number, :delivery_method,
                                   :quantity, :sales, :number_of_process,
                                   :process, :remarks)
    end
end
