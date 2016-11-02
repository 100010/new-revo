class Admin::SchedulesController < Admin::BaseController


    before_action :set_schedule, only: [:show, :update, :edit, :destroy]

    def index
      @schedules = Schedule.all
    end

    def edit
    end

    def update
      if @schedule.update permit_params
        redirect_to admin_schedules_path, flash: {success: "更新に成功しました"}
      else
        render :edit
      end
    end

    def new
      @schedule = Schedule.new
    end

    def create
      @schedule = Schedule.new permit_params
      if @schedule.save
        redirect_to admin_schedules_path, flash: {success: "正常に作成しました"}
      else
        render :new
      end
    end

    def destroy
      @schedule.destroy
      redirect_to :back, flash: {success: "削除しました"}
    end

    private def permit_params
      params.
        require(:schedule).
          permit(
            :title,
            :month,
            :day,
          )
    end

    private def set_schedule
      @schedule = Schedule.find params[:id]
    end

end
