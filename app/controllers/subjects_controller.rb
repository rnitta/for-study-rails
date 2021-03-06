# frozen_string_literal: true
class SubjectsController < ApplicationController
  # 便宜上全部通してるけどあとで権限設定ちゃんとする
  before_action :set_subject, only: %i[show destroy]
  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.user_id = current_user.id
    if @subject.save
      redirect_to @subject
    else
      render :new
    end
  end

  def show
  end

  def destroy
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:title, :category_id)
  end

end
