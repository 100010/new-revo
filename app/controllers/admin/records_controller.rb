class Admin::RecordsController  < Admin::BaseController

  before_action :set_record, only: [:edit, :update , :destroy]

  def index
    @records = Record.all
  end

  def edit
  end

  def update
    if @record.update permit_params
      redirect_to admin_records_path, flash: {success: "更新に成功しました"}
    else
      redirect_to :back
    end
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new permit_params
    if @record.save
      redirect_to admin_records_path, flash: {success: "正常に作成しました"}
    else
      render :new
    end
  end

  def destroy
    @record.destroy
    redirect_to :back, flash: {success: "削除しました"}
  end

  private def permit_params
    params.
      require(:record).
        permit(
          :title,
          :description,
          :subtitle,
          :image
        )
  end

  private def set_record
    @record = Record.find params[:id]
  end
end
