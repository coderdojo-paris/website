class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy, :move_to_bottom, :move_lower, :move_to_top, :move_higher]

  def mentors
    faq_type = FaqType.find_by name: 'Mentor'
    @faqs = Faq.where(faq_type_id: faq_type.id)
  end

  def participants
    student = FaqType.find_by name: 'Student'
    parent = FaqType.find_by name: 'Parent'
    @faqs = Faq.where(faq_type: [student, parent])
  end

  def move_to_top
    @faq.move_to_top
    redirect_to :back
  end

  def move_higher
    @faq.move_higher
    redirect_to :back
  end

  def move_to_bottom
    @faq.move_to_bottom
    redirect_to :back
  end

  def move_lower
    @faq.move_lower
    redirect_to :back
  end

  # GET /faqs
  def index
    @faqs = Faq.all
  end

  # GET /faqs/1
  def show
  end

  # GET /faqs/new
  def new
    @faq = Faq.new
  end

  # GET /faqs/1/edit
  def edit
  end

  # POST /faqs
  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      redirect_to @faq, notice: 'Faq was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /faqs/1
  def update
    if @faq.update(faq_params)
      redirect_to @faq, notice: 'Faq was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /faqs/1
  def destroy
    @faq.destroy
    redirect_to faqs_url, notice: 'Faq was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def faq_params
      params.require(:faq).permit(:title_en, :title_fr, :content_en, :content_fr, :faq_type_id)
    end
end
