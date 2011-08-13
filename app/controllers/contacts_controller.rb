class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.xml
  def index
    @contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /contacts/new
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /contacts
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Mensagem enviada com sucesso.'
        format.html { redirect_to(:action => 'new') }
      else
        format.html { redirect_to(:action => 'new') }
      end
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact = Contact.find(params[:id])

    if @contact.destroy
       format.html { redirect_to(@contact, :notice => 'Contato deletado com sucesso.') }

    end

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end
end

