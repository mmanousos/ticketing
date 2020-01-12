class TicketsController < ApplicationController
  before_action :set_ticket, only: [:edit, :update, :show, :destroy]

  def index 
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end  

  def edit
  end  

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save 
      flash[:notice] = "Ticket was successfully created."
      redirect_to tickets_path
    else 
      render :new
    end
  end  

  def update 
    if @ticket.update(ticket_params)
      flash[:notice] = "Ticket was successfully updated."
      redirect_to ticket_path(@ticket)
    else
      render :edit
    end
  end  

  def destroy
    @ticket.destroy
    redirect_to tickets_path
  end  

  private
  def ticket_params
    params.require(:ticket).permit(:project_id, :name, :body, :status)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

end