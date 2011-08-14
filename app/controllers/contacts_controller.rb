#encoding: utf-8

class ContactsController < ApplicationController

  # GET /contacts/new
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /contacts
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Mensagem enviada com sucesso.'
        format.html { redirect_to(:action => 'new') }
      else
        flash[:notice] = 'Favor prencher os campos obrigatórios.'
        format.html { redirect_to(:action => 'new') }
      end
    end
  end

end

