class WelcomeController < ApplicationController

  def index
    @records   = Record.limit(4).order(created_at: :asc)
    @schedules = Schedule.limit(4).order(created_at: :asc)
    @members   = Member.all  end

  def members
  end

  def contact
  end

  def link
  end

  def sample
    @records   = Record.limit(4).order(created_at: :asc)
    @schedules = Schedule.limit(4).order(created_at: :asc)
    @members   = Member.all
  end

end
