class ContextsController < ApplicationController
  before_action :set_context, only: [:show, :edit, :update, :destroy]

  # GET /contexts
  def index
    @contexts = Context.all
  end

  # GET /contexts/1
  def show
  end

  # GET /contexts/new
  def new
    @context = Context.new
  end

  # GET /contexts/1/edit
  def edit
  end

  # POST /contexts
  def create
    @context = Context.new(context_params)

    if @context.save
      redirect_to @context, notice: 'Context was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contexts/1
  def update
    if @context.update(context_params)
      redirect_to @context, notice: 'Context was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contexts/1
  def destroy
    @context.destroy
    redirect_to contexts_url, notice: 'Context was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_context
      @context = Context.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def context_params
      params.require(:context).permit(:title, :id_from_tc)
    end
end
