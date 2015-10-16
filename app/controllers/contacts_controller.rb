class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @contact = Contact.new
    render('contacts/index.html.erb')
  end

  def show
    @contact = Contact.find(params[:id])
    render('contacts/show.html.erb')
  end

  def new
    @contact = Contact.new
    render('contacts/new.html.erb')
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to("/contacts/#{@contact.id}")
    else
      render('contacts/new.html.erb')
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    render('contacts/edit.html.erb')
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(:name => params[:name],
      :email => params[:email])
      redirect_to("/contacts/#{@contact.id}")
    else
      render('contacts/edit.html.erb')
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to("/contacts")
  end

end
