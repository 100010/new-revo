class Admin::MembersController < Admin::BaseController

  before_action :set_member, only: [:show, :update, :edit, :destroy]

  def index
    @members = Member.all
  end

  def edit
  end

  def update
    if @member.update permit_params
      redirect_to admin_members_path, flash: {success: "更新に成功しました"}
    else
      render :edit
    end
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new permit_params
    if @member.save
      redirect_to admin_members_path, flash: {success: "正常に作成しました"}
    else
      render :new
    end
  end

  def destroy
    @member.destroy
    redirect_to :back, flash: {success: "削除しました"}
  end

  private def permit_params
    params.
      require(:member).
        permit(
          :name,
          :introduce,
          :depertment,
          :profile_image,
          :position
        )
  end

  private def set_member
    @member = Member.find params[:id]
  end

end
